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
                Year = x.Date.Year
            }).Where(z => z.Year == 2015).OrderBy(y => y.Title).Take(takeThisMany).ToList();

            return prods;
        }

        public List<VMphoto> GetRdForecast(int ForecastYearId)
        {
            var retVal = GetAllProducts(1);
            retVal[0].Day = 1000;
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