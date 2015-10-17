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
                Id = x.id,
                Year = x.Date.Year,
                Month = x.Date.Month
            }).Where(z => z.Year == 2015).OrderBy(t => t.Title).Take(takeThisMany).ToList();

            return prods;
        }

        public List<VMphoto> GetRdForecast(int ForecastYearId)
        {
            var retVal = GetAllProducts(2);
            
            foreach(var v in retVal)
            {
                v.Day = 999; //Day = a forecast amount for this example
                v.Month = 1;
            }

            return retVal;
        }

        public VMForecast GetVmForecast(int ForecastYearId, int ThisManyProducts)
        {
            VMForecast vm = new VMForecast();
            vm.AllProducts = GetAllProducts(ThisManyProducts);
            vm.ForecastYearId = ForecastYearId;
            vm.RdForecast = GetRdForecast(ForecastYearId);

            return vm;
        }
    }
}