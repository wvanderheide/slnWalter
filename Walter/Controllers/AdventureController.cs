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

            int[] itemsPerCol = new int[4];

            foreach (var year in grouped)
            {
                var oneYear = photos.Where(y => y.Year == year.Year).ToList();

                int remain = Convert.ToInt32(decimal.Remainder((decimal)oneYear.Count, 4m));
                itemsPerCol[0] = itemsPerCol[1] = itemsPerCol[2] = itemsPerCol[3] = oneYear.Count / 4;

                switch (remain)
                {
                    case 1:
                        itemsPerCol[0]++;
                        break;
                    case 2:
                        itemsPerCol[0]++;
                        itemsPerCol[1]++;
                        break;
                    case 3:
                        itemsPerCol[0]++;
                        itemsPerCol[1]++;
                        itemsPerCol[2]++;
                        break;
                }

                int loopCounter = 0;
                string t = "col1\n";
                foreach (var item in oneYear)
                {
                    loopCounter++;

                    if (loopCounter <= itemsPerCol[0])
                    {
                        //column 1
                        t = t + item.Title + item.Month.ToString() + item.Day.ToString() + "\n";
                    }
                    else if (loopCounter <= (itemsPerCol[0] + itemsPerCol[1]))
                    {
                        if (loopCounter == (itemsPerCol[0]+1))
                        {
                            t = t + "col2\n";
                        }
                        //column 2
                        t = t + item.Title + item.Month.ToString() + item.Day.ToString() + "\n";
                    }
                    else if (loopCounter <= (itemsPerCol[0] + itemsPerCol[1] + itemsPerCol[2]))
                    {
                        //column 3
                    }
                    else
                    {
                        //col 4
                    }
                }
                int stop = 0;
            }


            return View("Index", new AdventureViewModel { Photos = photos });
        }
    }
}