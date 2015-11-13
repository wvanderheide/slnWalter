using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class Error
    {
        public int MaxSequence { get; set; }
        public string Type { get; set; }
        public string Message { get; set; }
        public int Count { get; set; }
        public DateTime Newest { get; set; }
        public DateTime Oldest { get; set; }
    }
}