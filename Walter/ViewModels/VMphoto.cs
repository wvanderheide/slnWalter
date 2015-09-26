using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class VMphoto //: IComparable<VMphoto>
    {
        public int id { get; set; }
        public string Title { get; set; }
        public string URL { get; set; }
        public int Day { get; set; }
        public int Month { get; set; }
        public int Year { get; set; }

        //public int CompareTo(VMphoto other)
        //{
        //    return Year.CompareTo(other.Year);
        //}
    }
}