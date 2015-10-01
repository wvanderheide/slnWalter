using System;

namespace Walter.ViewModels
{
    public class VMmountainSummitLog : IComparable<VMmountainSummitLog>
    {
        public int Id { get; set; }
        public int MountainId { get; set; }
        public DateTime SummitDate { get; set; }
        public string SummitNote { get; set; }

        public int CompareTo(VMmountainSummitLog other)
        {
            return SummitDate.CompareTo(other.SummitDate);
        }
    }
}