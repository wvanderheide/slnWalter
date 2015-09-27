using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Walter.ViewModels;

namespace Walter.Models
{
    public class AdventureBusinessLayer
    {
        public List<VMPhotoYear> GetPhotoYears()
        {
            var db = new WalterEntities();
            List<VMphoto> photos = db.Photos.ToList().Select(x => new VMphoto
            {
                Title = x.Title,
                URL = x.URL,
                Day = x.Date.Day,
                Month = x.Date.Month,
                Year = x.Date.Year
            }).OrderBy(y => y.Year).ThenBy(m => m.Month).ThenBy(d => d.Day).ToList();

            return SortPhotos(photos);
        }

        private List<VMPhotoYear> SortPhotos(List<VMphoto> photos)
        {
            //TODO:  Break this method into smaller methods, and consider renaming it
            var PhotoYears = new List<VMPhotoYear>();
            int[] itemsPerCol = new int[4];

            var grouped = photos.GroupBy(y => y.Year).Select(group => new { Year = group.Key, Count = group.Count() });

            foreach (var year in grouped)
            {
                var col1 = new List<VMphoto>();
                var col2 = new List<VMphoto>();
                var col3 = new List<VMphoto>();
                var col4 = new List<VMphoto>();

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
                var photoYear = new VMPhotoYear();
                foreach (var item in oneYear)
                {
                    loopCounter++;

                    if (loopCounter <= itemsPerCol[0])
                    {
                        if (loopCounter == 1)
                        {
                            photoYear.Year = item.Year;
                        }
                        //column 1
                        //t = t + item.Title + item.Month.ToString() + item.Day.ToString() + "\n";

                        var x = new VMphoto
                        {
                            Title = item.Title,
                            URL = item.URL,
                            Day = item.Day,
                            Month = item.Month
                        };

                        if (photoYear.Col1 != null)
                        {
                            photoYear.Col1.Add(x);
                        }
                        else
                        {
                            photoYear.Col1 = new List<VMphoto>();
                            photoYear.Col1.Add(x);
                        }

                    }
                    else if (loopCounter <= (itemsPerCol[0] + itemsPerCol[1]))
                    {
                        if (loopCounter == (itemsPerCol[0] + 1))
                        {
                            //t = t + "end col 1\n\nstart col2\n";
                            photoYear.Year = item.Year;
                        }
                        //column 2
                        var x = new VMphoto
                        {
                            Title = item.Title,
                            URL = item.URL,
                            Day = item.Day,
                            Month = item.Month
                        };

                        if (photoYear.Col2 != null)
                        {
                            photoYear.Col2.Add(x);
                        }
                        else
                        {
                            photoYear.Col2 = new List<VMphoto>();
                            photoYear.Col2.Add(x);
                        }
                    }
                    else if (loopCounter <= (itemsPerCol[0] + itemsPerCol[1] + itemsPerCol[2]))
                    {
                        if (loopCounter == (itemsPerCol[0] + itemsPerCol[1] + 1))
                        {
                            //t = t + "end col 1\n\nstart col2\n";
                            photoYear.Year = item.Year;
                        }
                        //column 3
                        var x = new VMphoto
                        {
                            Title = item.Title,
                            URL = item.URL,
                            Day = item.Day,
                            Month = item.Month
                        };

                        if (photoYear.Col3 != null)
                        {
                            photoYear.Col3.Add(x);
                        }
                        else
                        {
                            photoYear.Col3 = new List<VMphoto>();
                            photoYear.Col3.Add(x);
                        }
                    }
                    else
                    {
                        if (loopCounter == (itemsPerCol[0] + itemsPerCol[1] + itemsPerCol[2] + 1))
                        {
                            photoYear.Year = item.Year;
                        }
                        //column 4
                        var x = new VMphoto
                        {
                            Title = item.Title,
                            URL = item.URL,
                            Day = item.Day,
                            Month = item.Month
                        };

                        if (photoYear.Col4 != null)
                        {
                            photoYear.Col4.Add(x);
                        }
                        else
                        {
                            photoYear.Col4 = new List<VMphoto>();
                            photoYear.Col4.Add(x);
                        }
                    }
                }
                PhotoYears.Add(photoYear);
            }
            return PhotoYears;
        }
    }
}