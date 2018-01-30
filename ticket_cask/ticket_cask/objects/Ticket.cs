using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ticket_cask.objects
{
    class Ticket
    {
        public string Status { get; set; }
        public DateTime Completed { get; set; }
        public DateTime Requested { get; set; }
        public int Age { get; set; }
        public string AssignedName { get; set; }
        public string Title { get; set; }
        public string Priority { get; set; }



        public Ticket(string stat, DateTime req, DateTime com)
        {
            Status = stat;
            Completed = com;
            Requested = req;
        }

        public Ticket(string stat, DateTime req, DateTime com, int age, string ass, string title, string priority)
        {
            Status = stat;
            Requested = req;
            Completed = com;
            Age = age;
            AssignedName = ass;
            Title = title;
            Priority = priority;
        }
    }
}
