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
    
    public partial class AllClimbs_Result
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Elevation { get; set; }
        public string Country { get; set; }
        public string State { get; set; }
        public Nullable<decimal> Latitude { get; set; }
        public Nullable<decimal> Longitude { get; set; }
        public string MountainNote { get; set; }
        public Nullable<int> MountainID { get; set; }
        public Nullable<System.DateTime> SummitDate { get; set; }
        public string SummitNote { get; set; }
    }
}