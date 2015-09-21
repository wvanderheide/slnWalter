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


        //public int CompareTo(object obj)
        //{
        //    throw new NotImplementedException();
        //}

        //public int CompareTo(object obj)
        //{
        //    if (obj == null) return 1;

        //    MountainSummitLog otherMountainSummitLog = obj as MountainSummitLog;
        //    if (otherMountainSummitLog != null)
        //        return this.SummitDate.CompareTo(otherMountainSummitLog.SummitDate);
        //    else
        //        throw new ArgumentException("Object is not a Temperature");
        //}

    }
}