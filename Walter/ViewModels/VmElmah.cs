using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class VmElmah
    {
        public string Sql { get; set; }
        public string Message { get; set; }
        public int Count { get; set; }
        public DateTime Newest { get; set; }
        public DateTime Oldest { get; set; }
    }
}