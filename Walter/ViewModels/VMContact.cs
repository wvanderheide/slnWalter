using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class VmContact
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string MiddleName { get; set; }
        public string Spouse { get; set; }
        public string MobilePhone { get; set; }
        public string HomePhone { get; set; }
        public string HomeStreet { get; set; }
        public string HomeCity { get; set; }
        public string HomePostalCode { get; set; }
        public string HomeState { get; set; }
        public string HomeCountry { get; set; }
        public string Nickname { get; set; }
        public string Notes { get; set; }
    }
}