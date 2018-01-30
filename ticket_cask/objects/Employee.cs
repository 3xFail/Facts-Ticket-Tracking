using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ticket_cask.objects
{
    class Employee
    {
        public string Username { get; set; }
        //closed stat vals
        public int SevenDay_ClosedCount { get; set; }
        public int ThirtyDay_ClosedCount { get; set; }
        public int NinetyDay_ClosedCount { get; set; }
        //assigned stat vals
        public int Assigned_Count { get; set; }
        public int LessThanSevenDays_Count { get; set; }
        public int EightToFourteen_Count { get; set; }
        public int FourteenToTwentySecond_Count { get; set; }
        public int TwentySecondToThirty_Count { get; set; }
        

        public Employee(string n)
        {
            Username = n;
        }

        public Employee(string n, int sdc, int tdc, int ndc, int ass, int ltsd, int etf, int ftt, int ttt)
        {
            SevenDay_ClosedCount = sdc;
            ThirtyDay_ClosedCount = tdc;
            NinetyDay_ClosedCount = ndc;
            Assigned_Count = ass;
            LessThanSevenDays_Count = ltsd;
            EightToFourteen_Count = etf;
            FourteenToTwentySecond_Count = ftt;
            TwentySecondToThirty_Count = ttt;
            Username = n;
        }
    }
}
