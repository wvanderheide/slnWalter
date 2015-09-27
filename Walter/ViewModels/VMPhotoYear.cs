using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class VMPhotoYear
    {
        public int Year { get; set; }
        public List<VMphoto> Col1 { get; set; }
        public List<VMphoto> Col2 { get; set; }
        public List<VMphoto> Col3 { get; set; }
        public List<VMphoto> Col4 { get; set; } 
    }
}