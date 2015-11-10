using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class VmElmahDetail
    {
        public string Message { get; set; }
        public int Sequence { get; set; }
        public DateTime MtnTime { get; set; }
        public string Referer { get; set; }
        public string UserAgent { get; set; }
        public string ServerName { get; set; }
        public string Url { get; set; }
        public string Sql { get; set; }
    }
}