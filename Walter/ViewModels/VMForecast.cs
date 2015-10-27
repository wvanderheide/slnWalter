using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class VmForecast
    {
        public int ForecastYearId { get; set; }
        public List<VmPhoto> AllProducts { get; set; }
        public List<VmPhoto> RdForecast { get; set; }
    }
}