using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class Mountain
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Mountain Name is required")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Elevation is required")]
        public int Elevation { get; set; }

        [Required(ErrorMessage = "Country is required")]
        public string Country { get; set; }

        public string State { get; set; }
        public decimal? Latitude { get; set; }
        public decimal? Longitude { get; set; }
        public string MountainNote { get; set; }
        public List<MountainSummitLog> SummitLog { get; set; }
    }
}