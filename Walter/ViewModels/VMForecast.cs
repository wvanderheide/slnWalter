using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class VMForecast
    {
        public int ForecastYearId { get; set; }
        public List<VMphoto> AllProducts { get; set; }
        public List<VMphoto> RdForecast { get; set; }
    }
}