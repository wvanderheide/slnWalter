using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class VmClimbYear
    {
        public int Year { get; set; }
        public List<VmClimb> Col1 { get; set; }
        public List<VmClimb> Col2 { get; set; }
        public List<VmClimb> Col3 { get; set; }
        public List<VmClimb> Col4 { get; set; } 
    }
}