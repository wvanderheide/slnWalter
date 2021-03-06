//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Walter.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Mountain
    {
        public Mountain()
        {
            this.MountainSummitLogs = new HashSet<MountainSummitLog>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public int Elevation { get; set; }
        public string Country { get; set; }
        public string State { get; set; }
        public Nullable<decimal> Latitude { get; set; }
        public Nullable<decimal> Longitude { get; set; }
        public string MountainNote { get; set; }
    
        public virtual ICollection<MountainSummitLog> MountainSummitLogs { get; set; }
    }
}
