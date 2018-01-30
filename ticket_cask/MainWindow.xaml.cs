using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ticket_cask.objects;


namespace ticket_cask
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        System.Windows.Forms.Timer tmr = null;
        System.Windows.Forms.Timer bg_tmr = null;
        private SqlConnection sql;

        //Forground timer that controls the current time display on the dashboard
        //Interval set to a second so it updates every second
        private void StartTmr()
        {
            tmr = new System.Windows.Forms.Timer();
            tmr.Interval = 1000;
            tmr.Tick += new EventHandler(tmr_Tick);
            tmr.Enabled = true;
        }
        //Background timer starter
        //Creates a timer that has a event that occurs every 5 min
        private void StartbgTmr()
        {
            bg_tmr = new System.Windows.Forms.Timer();
            bg_tmr.Interval = 10000;
            bg_tmr.Tick += new EventHandler(bgtmr_Tick);
            bg_tmr.Enabled = true;
        }

        void tmr_Tick(object sender, EventArgs e)
        {
            dashDate.Text = DateTime.Now.ToString("MM/dd/yy\n HH:MM:ss");
        }

        void bgtmr_Tick(object sender, EventArgs r)
        {

            //do the stored procedure call to update data views
            dTicketGrid.ItemsSource = null;
            SqlCommand command = new SqlCommand("StatsTracker_DashBoardTickets", sql);
            SqlDataReader reader = null;
            //List<EmpStatRow> rows = new List<EmpStatRow>();
            //EmpStatRow row = null;
            try
            {
                sql.Open();
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.Add("@date", SqlDbType.DateTime).Value = rDatepicker.SelectedDate.Value;
                reader = command.ExecuteReader();
                List<Ticket> tickets = new List<Ticket>();
                List<Ticket> ticket_context = new List<Ticket>();
                //List<> emp_context = new List<>();
                Ticket temp = null;


                while (reader.Read())
                {
                    temp = new Ticket(reader["Status"].ToString(), Convert.ToDateTime(reader["DateRequested"]), (reader["Status"].ToString() == "Closed" ? Convert.ToDateTime(reader["DateCompleted"]) : DateTime.MinValue), ((rDatepicker.SelectedDate.Value - Convert.ToDateTime(reader["DateRequested"].ToString())).Days), reader["Assignee"].ToString(), reader["Title"].ToString(), reader["Priority"].ToString());
                    tickets.Add(temp);
                }
                sql.Close();

                foreach (Ticket tmp in tickets)
                {
                    //define which are open and closed
                    if(tmp.Status != "Closed" && tmp.Status != "Cancelled")
                    {
                        ticket_context.Add(tmp);
                    }
                    //these are closed or cancelled that should only be within the last day
                    else
                    {
                        if(tmp.Status == "Closed")
                        {

                        }

                    }

                }


                dTicketGrid.ItemsSource = ticket_context;
                dTicketGrid.DataContext = ticket_context;
                dTicketGrid.Items.SortDescriptions.Add(new System.ComponentModel.SortDescription("Priority", System.ComponentModel.ListSortDirection.Ascending));
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show(e.ToString());
            }

        }
        
        public MainWindow()
        {
            InitializeComponent();
            sql = new SqlConnection(ConfigurationManager.ConnectionStrings["FACTS"].ConnectionString);
            rRightPanel.Visibility = Visibility.Collapsed;
            rBarGraph.Visibility = Visibility.Collapsed;
            
        }
        //reports section of the program
        private void rbtnSelect_Click(object sender, RoutedEventArgs e)
        {
            //No option selected
            if(cbReport.SelectedIndex == -1)
            {
                System.Windows.MessageBox.Show("Please select a report option from the list");
            }
            //Employee Reports Selected
            else if(cbReport.SelectedIndex == 0)
            {
                SqlCommand command = new SqlCommand("StatsTracker_EmployeeReport", sql);
                SqlDataReader reader = null;
                List<EmpStatRow> rows = new List<EmpStatRow>();
                EmpStatRow row = null;
                try
                {
                    sql.Open();
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.Add("@Date", SqlDbType.DateTime).Value = rDatepicker.SelectedDate.Value.AddDays(-90);
                    reader = command.ExecuteReader();
                    
                    while(reader.Read())
                    {
                        row = new EmpStatRow(reader["AssignedToName"].ToString(), reader["Status"].ToString(), Convert.ToDateTime(reader["DateRequested"]));
                        
                        if(row.status == "Closed")
                        {
                            row.com_date = Convert.ToDateTime(reader["DateCompleted"]);
                        }
                        else
                        {
                            row.com_date = DateTime.MinValue;
                        }
                        rows.Add(row);
                    }
                    sql.Close();

                    List<Employee> staff = new List<Employee>();
                    Employee emp = null;


                    int age;
                    foreach( EmpStatRow Row in rows)
                    {
                        age = 0;
                        if(staff.Any(item => item.Username == Row.ass_to_Username) == true)
                        {
                            //staff.Find(i => i.Username == Row.ass_to_Username)
                            if(Row.status != "Closed")
                            {
                                //add to assigned count 
                                staff.Find(i => i.Username == Row.ass_to_Username).Assigned_Count++;

                                //calculate how old the ticket is
                                age = (rDatepicker.SelectedDate.Value - Row.req_date).Days;
                                if(age < 8 && age >= 0)
                                {
                                    staff.Find(i => i.Username == Row.ass_to_Username).LessThanSevenDays_Count++;
                                }
                                else if (age >= 8 && age < 15)
                                {
                                    staff.Find(i => i.Username == Row.ass_to_Username).EightToFourteen_Count++;
                                }
                                else if (age >= 15 && age < 22)
                                {
                                    staff.Find(i => i.Username == Row.ass_to_Username).FourteenToTwentySecond_Count++;
                                }
                                else if (age >= 22)
                                {
                                    staff.Find(i => i.Username == Row.ass_to_Username).TwentySecondToThirty_Count++;
                                }
                            }
                            else
                            {
                                //ticket is closed, incremment the closed counter
                                if (Row.com_date != DateTime.MinValue)
                                {
                                    age = (rDatepicker.SelectedDate.Value - Row.com_date).Days;
                                }
                                else
                                {
                                    //This should never happen but just in case we set it to the requested date and not the completed date
                                    age = (rDatepicker.SelectedDate.Value - Row.com_date).Days;
                                }

                                if (age < 8 )
                                {
                                    staff.Find(i => i.Username == Row.ass_to_Username).SevenDay_ClosedCount++;
                                }
                                if (age < 31)
                                {
                                    staff.Find(i => i.Username == Row.ass_to_Username).ThirtyDay_ClosedCount++;
                                }
                                if (age < 91)
                                {
                                    staff.Find(i => i.Username == Row.ass_to_Username).NinetyDay_ClosedCount++;
                                }

                            }
                        }
                        else
                        {
                            if (Row.status != "Closed")
                            {
                                //add to assigned count 
                                //calculate how old the ticket is
                                age = (rDatepicker.SelectedDate.Value - Row.req_date).Days;
                                if (age < 8 && age >= 0)
                                {
                                    emp = new Employee(Row.ass_to_Username, 0, 0, 0, 1, 1, 0, 0, 0);
                                }
                                else if (age >= 8 && age < 15)
                                {
                                    emp = new Employee(Row.ass_to_Username, 0, 0, 0, 1, 0, 1, 0, 0);
                                }
                                else if (age >= 15 && age < 22)
                                {
                                    emp = new Employee(Row.ass_to_Username, 0, 0, 0, 1, 0, 0, 1, 0);
                                }
                                else if (age >= 22)
                                {
                                    emp = new Employee(Row.ass_to_Username, 0, 0, 0, 1, 0, 0, 0, 1);
                                }
                                
                                
                            }
                            else
                            {
                                //ticket is closed, incremment the closed counter
                                if (Row.com_date != DateTime.MinValue)
                                {
                                    age = (rDatepicker.SelectedDate.Value - Row.com_date).Days;
                                }
                                else
                                {
                                    //This should never happen but just in case we set it to the requested date and not the completed date
                                    age = (rDatepicker.SelectedDate.Value - Row.com_date).Days;
                                }
                                if (age < 8)
                                {
                                    emp = new Employee(Row.ass_to_Username, 1, 1, 1, 0, 0, 0, 0, 0);
                                }
                                else if (age < 31)
                                {
                                    emp = new Employee(Row.ass_to_Username, 0, 1, 1, 0, 0, 0, 0, 0);
                                }
                                else if (age < 91)
                                {
                                    emp = new Employee(Row.ass_to_Username, 0, 0, 1, 0, 0, 0, 0, 0);
                                }
                            }
                            staff.Add(emp);
                        }
                        
                    }
                    ObservableCollection<Employee> data_grid_content = new ObservableCollection<Employee>();
                    foreach (Employee empp in staff)
                    {
                        data_grid_content.Add(empp);
                    }
                    rRightPanel.Visibility = Visibility.Visible;
                    rGrid.AutoGenerateColumns = true;
                    rGrid.ItemsSource = data_grid_content;
                    rGrid.DataContext = data_grid_content;
                }
                catch( Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                    sql.Close();
                    //System.Windows.MessageBox.Show("Problem connecting or retrieving content from database");
                }
            }
            //Ticket age selected
            else if(cbReport.SelectedIndex == 1)
            {
                
                SqlCommand commnd = new SqlCommand("StatsTracker_VelocityReport", sql);
                SqlDataReader readr = null;
                

                try
                {
                    sql.Open();
                    commnd.CommandType = System.Data.CommandType.StoredProcedure;
                    commnd.Parameters.Add("@Date", SqlDbType.DateTime).Value = rDatepicker.SelectedDate.Value.AddDays(-90);
                    readr = commnd.ExecuteReader();
                    List<Ticket> data = new List<Ticket>();
                    Ticket temp = null;
                    
                    while (readr.Read())
                    {
                        if (readr["Status"].ToString() == "Closed")
                        {
                            temp = new Ticket(readr["Status"].ToString(), Convert.ToDateTime(readr["DateRequested"]), Convert.ToDateTime(readr["DateCompleted"]));
                            temp.Age = (rDatepicker.SelectedDate.Value - temp.Completed).Days;
                            temp.AssignedName = readr["AssignedToName"].ToString();
                        }
                        else
                        {
                            temp = new Ticket(readr["Status"].ToString(), Convert.ToDateTime(readr["DateRequested"]), DateTime.MinValue);
                            temp.Age = (rDatepicker.SelectedDate.Value - temp.Requested).Days;
                            temp.AssignedName = readr["AssignedToName"].ToString();
                        }
                        data.Add(temp);
                    }
                    sql.Close();

                    int[] age_data = new int[90];

                    for(int i = 0; i < 90; i++)
                    {
                        age_data[i] = 0;
                    }

                    foreach (Ticket it in data)
                    {
                        if (it.Status != "Closed")
                        {


                            if (it.Age < 91 && it.Age > 0)
                            {
                                age_data[(it.Age - 1)]++;
                            }
                            else if (it.Age == 0)
                            {
                                age_data[0]++;
                            }
                        }
                    }

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

                    foreach (Ticket tick  in data)
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

                            if(tick.AssignedName != "Unassigned")
                            {
                                ass_c++;
                            }
                        }
                    }
                    List<AllStatsRow> rws = new List<AllStatsRow>();
                    AllStatsRow stats = new AllStatsRow(rDatepicker.SelectedDate.Value.ToString("MM-dd-yy"), open_c, ass_c, seven_create, thirt_create, ninet_create, seven_close, thirt_close, nint_close, seven_age, eight_age, fifteen_age, twenty_age, thirt_age);
                    rws.Add(stats);
                    rBarGraph.Visibility = Visibility.Visible;
                    rRightPanel.Visibility = Visibility.Visible;
                    rbgGraph.PlotBars(age_data);
                    
                    rGrid.ItemsSource = rws;
                    rGrid.DataContext = rws;
                }
                catch(Exception ex)
                {
                    System.Windows.MessageBox.Show(ex.ToString());
                    sql.Close();
                }

            }
            //shits borked
            else
            {
                System.Windows.MessageBox.Show("World is ending closing");
                Application.Current.Shutdown(99);
            }
        }
        
        private void rbtnClear_Click(object sender, RoutedEventArgs e)
        {
            if(cbReport.SelectedIndex != -1)
            {
                cbReport.SelectedIndex = -1;
                rDatepicker.SelectedDate = DateTime.Now;
                rGrid.ItemsSource = null;
                rRightPanel.Visibility = Visibility.Collapsed;
                rBarGraph.Visibility = Visibility.Collapsed;
            }
        }
        //hiding this functionality for now 
        private void rPrintButt_Click(object sender, RoutedEventArgs e)
        {

        }

        private void rExportButt_Click(object sender, RoutedEventArgs e)
        {
            if(rGrid.ItemsSource != null && cbReport.SelectedIndex != -1 )
            {
                try
                {
                    string report_type;

                    if(cbReport.SelectedIndex == 0)
                    {
                        report_type = "Employee_Report_" + rDatepicker.SelectedDate.Value.ToString("MM-dd-yy");
                    }
                    else if (cbReport.SelectedIndex == 1)
                    {
                        report_type = "TicketAge_Report_" + rDatepicker.SelectedDate.Value.ToString("MM-dd-yy");
                    }
                    else if(cbReport.SelectedIndex == 2)
                    {
                        report_type = "Velocity_Report_" + rDatepicker.SelectedDate.Value.ToString("MM-dd-yy");
                    }
                    else
                    {
                        //This will never happen... hopefully
                        report_type = "world_is_on_fire";
                    }

                    rGrid.SelectAllCells();
                    rGrid.ClipboardCopyMode = DataGridClipboardCopyMode.IncludeHeader;
                    ApplicationCommands.Copy.Execute(null, rGrid);
                    var resultat = (string)Clipboard.GetData(DataFormats.CommaSeparatedValue);
                    var result = (string)Clipboard.GetData(DataFormats.Text);
                    rGrid.UnselectAllCells();
                    var path = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
                    string loc = @"C:\Users\" + Environment.UserName + @"\Desktop\" + report_type.ToString() + ".xls";
                    var excelFile = new StreamWriter(loc);
                    excelFile.WriteLine(result.Replace(',', ' '));
                    excelFile.Close();
                    System.Windows.MessageBox.Show("File " + report_type.ToString() + ".xlsx was exported and stored at \n\n" + loc.ToString());
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void tcHead_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if(tiReports.IsSelected)
            {

            }
            if(tiDashBoard.IsSelected)
            {
                StartTmr();
                StartbgTmr();

            }
            if(tiForcast.IsSelected)
            {

            }
        }
    }

    public class NegatingConverter : IValueConverter
    {

        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (value is double)
            {
                return -((double)value);
            }
            return value;
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (value is double)
            {
                return +(double)value;
            }
            return value;
        }
    }
}
