using ExcelDataReader;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Security.Permissions;
using System.Text;
using System.Threading.Tasks;

namespace StatsReader
{
    class Program
    {
        //public string user { get; set; }
        //public string pass { get; set; }
        public static string loc = @"T:\Information Technology Services\Help Desk\fast";
        public static string testloc = @"C:\Users\sw.rwilliams\Downloads\fact108363a.xlsx"; 

        public static void Main(string[] args)
        {
            //Run();
            test();
        }

        [PermissionSet(SecurityAction.Demand, Name = "FullTrust")]
        public static void Run()
        {
            // Create a new FileSystemWatcher and set its properties.
            FileSystemWatcher watcher = new FileSystemWatcher();
            watcher.Path = loc;
            /* Watch for changes in LastAccess and LastWrite times, and
               the renaming of files or directories. */
            watcher.NotifyFilter = NotifyFilters.LastAccess | NotifyFilters.LastWrite
               | NotifyFilters.FileName | NotifyFilters.DirectoryName;
            
            // Only watch xlsx files.
            watcher.Filter = "*.xlsx";

            // Add event handlers.
            watcher.Created += new FileSystemEventHandler(OnCreate);
            
            // Begin watching.
            watcher.EnableRaisingEvents = true;

            // Wait for the user to quit the program.
            Console.WriteLine("Press \'q\' to quit.");
            while (Console.Read() != 'q') ;
        }

        // Define the event handlers.
        private static void OnCreate(object source, FileSystemEventArgs e)
        {
            // Specify what is done when a file is changed, created, or deleted.
            FileStream stream = File.Open(e.FullPath, FileMode.Open, FileAccess.Read);
            IExcelDataReader reader = ExcelReaderFactory.CreateOpenXmlReader(stream);

            DataSet result = reader.AsDataSet(new ExcelDataSetConfiguration()
            {
                UseColumnDataType = true,
                ConfigureDataTable = (tableReader) => new ExcelDataTableConfiguration()
                {
                    UseHeaderRow = true,
                    FilterRow = (rowReader) => {
                        return true;
                    }
                }
            }
            );
            reader.Close();


            foreach( DataRow r in result.Tables[0].Rows)
            {
                Console.WriteLine("{0}, {1}, {2}, {3}");
            }

        }

        public static void test()
        {
            FileStream stream = File.Open(testloc, FileMode.Open, FileAccess.Read);
            IExcelDataReader reader = ExcelReaderFactory.CreateOpenXmlReader(stream);

            DataSet result = reader.AsDataSet(new ExcelDataSetConfiguration()
            {
                UseColumnDataType = true,
                ConfigureDataTable = (tableReader) => new ExcelDataTableConfiguration()
                {
                    UseHeaderRow = true,
                    FilterRow = (rowReader) => {
                        return true;
                    }
                }
            }
            );
            reader.Close();


            foreach (DataRow r in result.Tables[0].Rows)
            {
                Console.WriteLine("{0}, {1}, {2}, {3}, {4}, {5}", r[0],r[1], r[2], r[3], r[4], r[5]);
            }

            Console.WriteLine("wait");
        }

        
    }
}
