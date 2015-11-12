using System;

namespace Walter.ViewModels
{
    public class ElmahDetail
    {
        public string Message { get; set; }
        public int Sequence { get; set; }
        public DateTime MtnTime { get; set; }
        public string Referer { get; set; }
        public string UserAgent { get; set; }
        public string ServerName { get; set; }
        public string Url { get; set; }
        public string AllXml { get; set; }
        public string QueryString { get; set; }
    }
}