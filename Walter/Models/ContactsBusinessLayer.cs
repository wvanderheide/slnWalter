using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Walter.ViewModels;

namespace Walter.Models
{
    public class ContactsBusinessLayer
    {

        public List<VmContact> GetContacts()
        {
            var db = new WalterEntities();

            return db.Contacts.ToList().Select(q => new VmContact
            {
                Id = q.Id,
                FirstName = q.First_Name,
                LastName = q.Last_Name,
                MiddleName = q.Middle_Name,
                Spouse = q.Spouse,
                MobilePhone = q.Mobile_Phone,
                HomePhone = q.Home_Phone,
                HomeStreet = q.Home_Street,
                HomeCity = q.Home_City,
                HomePostalCode = q.Home_Postal_Code,
                HomeState = q.Home_State,
                HomeCountry = q.Home_Country,
                Nickname = q.Nickname,
                Notes = q.Notes
            }).ToList();
        }
    }
}