using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Walter.ViewModels;

namespace Walter.Models
{
    public class TestBusinessLayer
    {
        public List<VMphoto> GetAllProducts(int takeThisMany)
        {
            var db = new WalterEntities();
            List<VMphoto> prods = db.Photos.ToList().Select(x => new VMphoto
            {
                Title = x.Title,
                Id = x.id
            }).OrderBy(y => y.Title).Take(takeThisMany).ToList();

            return prods;
        }
    }
}