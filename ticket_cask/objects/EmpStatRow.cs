using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ticket_cask.objects
{
    class EmpStatRow
    {
        public string ass_to_Username;
        public string status;
        public DateTime req_date;
        public DateTime com_date;

        public EmpStatRow(string assigned_Username, string stat, DateTime requested_date)
        {
            ass_to_Username = assigned_Username;
            status = stat;
            req_date = requested_date;
        }
    }
}
