using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Walter.ViewModels;

namespace Walter.Models
{
    public class AdventureBusinessLayer
    {
        public List<VMphoto> GetPhotos()
        {
            var db = new WalterEntities();

            return db.Photos.ToList().Select(x => new VMphoto
            {
                id = x.id,
                Title = x.Title,
                URL = x.URL,
                Day = x.Date.Day,
                Month = x.Date.Month,
                Year = x.Date.Year
            }).ToList();
        }
    }
}