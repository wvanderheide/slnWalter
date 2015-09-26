using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class AdventureController : Controller
    {
        public ActionResult Index()
        {
            var b = new AdventureBusinessLayer();

            //get photos then group photos by year, sort photos by month then day desc
            var photos = b.GetPhotos().OrderByDescending(y => y.Year).ThenByDescending(m => m.Month).ThenByDescending(d => d.Day).ToList();

            var grouped = photos.GroupBy(y => y.Year).Select(group => new { Year = group.Key, Count = group.Count() });

            int itemsInFirstColumn = 0;
            int itemsInSecondColumn = 0;
            int itemsInThirdColumn = 0;

            foreach (var year in grouped)
            {
                var oneYear = photos.Where(y => y.Year == year.Year).ToList();

                decimal remain = decimal.Remainder((decimal)oneYear.Count, 3m);
                itemsInThirdColumn = oneYear.Count / 3;
                itemsInSecondColumn = itemsInThirdColumn;
                itemsInFirstColumn = itemsInThirdColumn;

                if (remain > 0)
                {
                    itemsInFirstColumn++;
                    if (remain > 1.5m) itemsInSecondColumn++;
                }

                int loopCounter = 0;
                foreach (var item in oneYear)
                {
                    loopCounter++;

                    if (loopCounter <= itemsInFirstColumn)
                    {
                        //column 1

                    }
                    else if (loopCounter <= itemsInSecondColumn)
                    {
                        //column 2
                    }
                    else
                    {
                        //column 3
                    }
                };
            }


            return View("Index", new AdventureViewModel { Photos = photos });
        }
    }
}