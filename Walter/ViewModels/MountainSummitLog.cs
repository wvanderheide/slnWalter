using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class MountainSummitLog : IComparable<MountainSummitLog>
    {
        public int Id { get; set; }
        public int MountainId { get; set; }
        public DateTime SummitDate { get; set; }
        public string SummitNote { get; set; }

        public int CompareTo(MountainSummitLog other)
        {
            return SummitDate.CompareTo(other.SummitDate);
        }
    }
}