using ExcelDataReader;
using System;
using System.Configuration;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Permissions;
using System.Text;
using System.Threading.Tasks;
using ticket_cask.objects;

namespace StatsReader
{
    class Program
    {
        public static FileSystemWatcher watcher;
        public static string loc = @"T:\Information Technology Services\Help Desk\fast";
        //public static string loc = @"C:\Users\sw.rwilliams\Desktop\test";
        //public static string testloc = @"T:\Information Technology Services\Help Desk\fast\FASTS Service Desk Data Extract_2191_123456010_02-21-2018_07-43-23_AM.xls";
        

        public static void Main(string[] args)
        {
            watcher = new FileSystemWatcher();
            Run();
            //test(testloc);
        }

        [PermissionSet(SecurityAction.Demand, Name = "FullTrust")]
        public static void Run()
        {
            // Create a new FileSystemWatcher and set its properties.
            watcher.Path = loc;
            /* Watch for changes in LastAccess and LastWrite times, and
               the renaming of files or directories. */
            watcher.NotifyFilter = NotifyFilters.LastWrite;

            // Only watch xlsx files.
            watcher.Filter = "*";

            // Add event handlers.
            watcher.Changed += new FileSystemEventHandler(OnCreate);
            
            // Begin watching.
            watcher.EnableRaisingEvents = true;

            // Wait for eternity 
            while(true)
            {

            }
        }

        // Define the event handlers.
        private static void OnCreate(object source, FileSystemEventArgs e)
        {
            //really lazy but if it works it works
            test(e.FullPath);
        }


        public static void test(string testloc)
        {
            AllStatsRow stat;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
            SqlCommand command = new SqlCommand("", conn);
            //SqlDataReader read = null;

            FileStream stream = File.Open(testloc, FileMode.Open, FileAccess.Read);
            IExcelDataReader reader = ExcelReaderFactory.CreateBinaryReader(stream);

            DataSet result = reader.AsDataSet(new ExcelDataSetConfiguration()
            {
                UseColumnDataType = true,
                ConfigureDataTable = (tableReader) => new ExcelDataTableConfiguration()
                {
                    UseHeaderRow = true,
                    FilterRow = (rowReader) =>
                    {
                        return true;
                    }
                }
            }
            );
            reader.Close();

            //need to remove the top three rows
            result.Tables[0].Rows.RemoveAt(0);
            result.Tables[0].Rows.RemoveAt(0);
            result.Tables[0].Rows.RemoveAt(0);

            List<Ticket> ticket_list = new List<Ticket>();
            Ticket temp;

            foreach (DataRow r in result.Tables[0].Rows)
            {
                temp = new Ticket(r[1].ToString(), Convert.ToDateTime(r[3]),
                    ((r[1].ToString() == "Closed" || r[1].ToString() == "Cancelled") ? Convert.ToDateTime(r[4]) : DateTime.MinValue),
                    ((DateTime.Now - Convert.ToDateTime(r[3].ToString())).Days), r[0].ToString(),
                    "NULL", r[2].ToString(), r[5].ToString());

                ticket_list.Add(temp);
            }

            //info manipulations
            int open_c = 0;
            int ass_c = 0;
            int seven_create = 0;
            int thirt_create = 0;
            int ninet_create = 0;
            int seven_close = 0;
            int thirt_close = 0;
            int nint_close = 0;
            int seven_age = 0;
            int eight_age = 0;
            int fifteen_age = 0;
            int twenty_age = 0;
            int thirt_age = 0;

            foreach (Ticket tick in ticket_list)
            {

                if (tick.Age < 8)
                {
                    seven_create++;
                }
                if (tick.Age < 31)
                {
                    thirt_create++;
                }
                if (tick.Age < 91)
                {
                    ninet_create++;
                }


                if (tick.Status == "Closed" || tick.Status == "Cancelled")
                {
                    if (tick.Age < 8)
                    {
                        seven_close++;
                    }
                    if (tick.Age < 31)
                    {
                        thirt_close++;
                    }
                    if (tick.Age < 91)
                    {
                        nint_close++;
                    }
                }
                else
                {
                    open_c++;
                    if (tick.Age < 8)
                    {
                        seven_age++;
                    }
                    else if (tick.Age >= 8 && tick.Age < 15)
                    {
                        eight_age++;
                    }
                    else if (tick.Age >= 15 && tick.Age < 22)
                    {
                        fifteen_age++;
                    }
                    else if (tick.Age >= 22 && tick.Age < 31)
                    {
                        twenty_age++;
                    }
                    else
                    {
                        thirt_age++;
                    }

                    if (tick.AssignedName != "Unassigned")
                    {
                        ass_c++;
                    }
                }

            }


            //stat = new AllStatsRow( new DateTime(2018, 2, 21).ToString("MM-dd-yy"), open_c, ass_c, seven_create, thirt_create, ninet_create, seven_close, thirt_close, nint_close, seven_age, eight_age, fifteen_age, twenty_age, thirt_age);
            stat = new AllStatsRow(DateTime.Now.ToString("MM-dd-yy"), open_c, ass_c, seven_create, thirt_create, ninet_create, seven_close, thirt_close, nint_close, seven_age, eight_age, fifteen_age, twenty_age, thirt_age);

            try
            {
                Console.WriteLine("Inserting to Velocity table");
                conn.Open();
                command = new SqlCommand("Velocity_Insert", conn);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                //insert information from stat
                command.Parameters.Add("@reportdate", SqlDbType.DateTime).Value = stat.Report_Date;
                command.Parameters.Add("@opencount", SqlDbType.Int).Value = stat.Open_count;
                command.Parameters.Add("@assignedcount", SqlDbType.Int).Value = stat.Assigned_count;
                command.Parameters.Add("@sevendaycreate", SqlDbType.Int).Value = stat.Seven_Day_Created_Count;
                command.Parameters.Add("@thirtydaycreate", SqlDbType.Int).Value = stat.Thirty_Day_Created_Count;
                command.Parameters.Add("@ninetydaycreate", SqlDbType.Int).Value = stat.Ninety_Day_Created_Count;
                command.Parameters.Add("@sevendayclose", SqlDbType.Int).Value = stat.Seven_Day_Closed_Count;
                command.Parameters.Add("@thirtydayclose", SqlDbType.Int).Value = stat.Thirty_Day_Closed_Count;
                command.Parameters.Add("@ninetydayclose", SqlDbType.Int).Value = stat.Ninety_Day_Closed_Count;
                command.Parameters.Add("@sevenage", SqlDbType.Int).Value = stat.Less_Than_Seven_Days_Old;
                command.Parameters.Add("@eightage", SqlDbType.Int).Value = stat.Eight_To_Fourteen_Days_Old;
                command.Parameters.Add("@fifteenage", SqlDbType.Int).Value = stat.Fifteen_To_Twenty_Days_Old;
                command.Parameters.Add("@twentdayage", SqlDbType.Int).Value = stat.TwentyTwo_To_Thirty_Days_Old;
                command.Parameters.Add("@thirtydayage", SqlDbType.Int).Value = stat.More_Than_Thirty_Day_Old;

                int tp = command.ExecuteNonQuery();
                //means that one row was not affected on the one row insert, therefore there was a error
                if (tp != -1)
                {
                    throw new Exception("Insert Velocity did not insert correctly");
                }

                Console.WriteLine("Insert to Velocity table successfully completed");
                conn.Close();

                //Run the snapshot clear
                Console.WriteLine("Clearing snapshot");
                conn.Open();
                command = new SqlCommand("Ticket_Clear", conn);
                command.CommandType = System.Data.CommandType.StoredProcedure;

                ////this should have a check around it after the first couple times to make sure its fully cleared out
                command.ExecuteNonQuery();

                conn.Close();
                Console.WriteLine("Snapshot cleared");
                //insert for the ticket snap shot
                Console.WriteLine("Inserting snapshot");

                foreach (Ticket t in ticket_list)
                {

                    conn.Open();
                    command = new SqlCommand("Ticket_Insert", conn);
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.Add("@assignedname", SqlDbType.VarChar).Value = t.AssignedName;
                    command.Parameters.Add("@stat", SqlDbType.VarChar).Value = t.Status;
                    command.Parameters.Add("@prior", SqlDbType.VarChar).Value = t.Priority;
                    command.Parameters.Add("@dater", SqlDbType.DateTime).Value = t.Requested;
                    command.Parameters.Add("@support", SqlDbType.VarChar).Value = t.Support_Group;
                    if (t.Status == "Closed")
                    {
                        command.Parameters.Add("@datec", SqlDbType.DateTime).Value = t.Completed;
                    }
                    else if (t.Status == "Cancelled")
                    {

                        command.Parameters.Add("@datec", SqlDbType.DateTime).Value = t.Completed;

                    }
                    else
                    {
                        //nullable on database so I dont pass it
                        command.Parameters.Add("@datec", SqlDbType.DateTime).Value = DBNull.Value;
                    }


                    if (command.ExecuteNonQuery() != -1)
                    {
                        throw new Exception("Insert Ticket did not insert correctly");
                    }

                    conn.Close();
                }
                Console.WriteLine("Insert snapshot completed");

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            Console.WriteLine("wait");
        }


    }
}
