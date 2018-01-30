using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ticket_cask.objects
{
    class AllStatsRow
    {
        public string Report_Date { get; set; }
        public int Open_count {get; set;}
        public int Assigned_count { get; set; }
        public int Seven_Day_Created_Count { get; set; }
        public int Thirty_Day_Created_Count { get; set; }
        public int Ninety_Day_Created_Count { get; set; }
        public int Seven_Day_Closed_Count { get; set; }
        public int Thirty_Day_Closed_Count { get; set; }
        public int Ninety_Day_Closed_Count { get; set; }
        public int Less_Than_Seven_Days_Old { get; set; }
        public int Eight_To_Fourteen_Days_Old { get; set; }
        public int Fifteen_To_Twenty_Days_Old { get; set; }
        public int TwentyTwo_To_Thirty_Days_Old { get; set; }
        public int More_Than_Thirty_Day_Old { get; set; }

        public AllStatsRow(string r, int o, int a, int sc, int tc, int nc, int sdc, int tdc, int ndc, int ltdo, int etfdo, int fttdo, int tttdo, int mttdo)
        {
            Report_Date = r;
            Open_count = o;
            Assigned_count = a;
            Seven_Day_Created_Count = sc;
            Thirty_Day_Created_Count = tc;
            Ninety_Day_Created_Count = nc;
            Seven_Day_Closed_Count = sdc;
            Thirty_Day_Closed_Count = tdc;
            Ninety_Day_Closed_Count = ndc;
            Less_Than_Seven_Days_Old = ltdo;
            Eight_To_Fourteen_Days_Old = etfdo;
            Fifteen_To_Twenty_Days_Old = fttdo;
            TwentyTwo_To_Thirty_Days_Old = tttdo;
            More_Than_Thirty_Day_Old = mttdo;
        }
    }
}
