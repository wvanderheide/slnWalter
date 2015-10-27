using System;

namespace Walter.ViewModels
{
    public class VmMountainSummitLog : IComparable<VmMountainSummitLog>
    {
        public int Id { get; set; }
        public int MountainId { get; set; }
        public DateTime SummitDate { get; set; }
        public string SummitNote { get; set; }

        public int CompareTo(VmMountainSummitLog other)
        {
            return SummitDate.CompareTo(other.SummitDate);
        }
    }
}