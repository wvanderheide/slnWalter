using System;
using System.Collections.Generic;
using System.Linq;

namespace Walter.ViewModels
{
    public class VmError
    {
        public string Sql { get; set; }
        public List<Error> Errors { get; set; }
    }
}