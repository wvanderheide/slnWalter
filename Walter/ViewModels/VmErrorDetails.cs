using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class VmErrorDetails
    {
        public string Sql { get; set; }
        public List<ErrorDetail> Details { get; set; }
    }
}