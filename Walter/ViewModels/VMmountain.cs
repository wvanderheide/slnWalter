using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Walter.ViewModels
{
    public class VmMountain
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Mountain Name is required")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Elevation is required")]
        public int? Elevation { get; set; } //nullable so that default isn't ZERO

        [Required(ErrorMessage = "Country is required")]
        public string Country { get; set; }

        public string State { get; set; }
        public decimal? Latitude { get; set; }
        public decimal? Longitude { get; set; }
        public string MountainNote { get; set; }
        public List<VmMountainSummitLog> SummitLog { get; set; }
    }
}