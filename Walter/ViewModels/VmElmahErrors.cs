using System;
using System.Collections.Generic;
using System.Linq;

namespace Walter.ViewModels
{
    public class VmElmahErrors
    {
        public string Sql { get; set; }
        public List<Elmah> Errors { get; set; }
    }
}