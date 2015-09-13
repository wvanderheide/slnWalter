using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class Mountain
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Elevation { get; set; }
        public string Country { get; set; }
        public string State { get; set; }
        public decimal? Latitude { get; set; }
        public decimal? Longitude { get; set; }
        public string MountainNote { get; set; }
        public List<MountainSummitLog> SummitLog { get; set; }
    }
}