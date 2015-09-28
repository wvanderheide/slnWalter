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
            }).OrderByDescending(y => y.Year).ThenByDescending(m => m.Month).ThenByDescending(d => d.Day).ToList();

            return putPhotosInColumns(photos);
        }

        private void calculateColumnCounts(int totalItems, out int[] colCounts)
        {
            int[] itemsPerCol = new int[4];
            int remain = Convert.ToInt32(decimal.Remainder((decimal)totalItems, 4m));
            itemsPerCol[0] = itemsPerCol[1] = itemsPerCol[2] = itemsPerCol[3] = totalItems / 4;

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

            colCounts = itemsPerCol;
        }

        private List<VMPhotoYear> putPhotosInColumns(List<VMphoto> photos)
        {
            var photoYears = new List<VMPhotoYear>();
            int[] itemsPerCol = new int[4];
            var grouped = photos.GroupBy(y => y.Year).Select(group => new { Year = group.Key, Count = group.Count() });

            foreach (var year in grouped)
            {
                var thisYear = photos.Where(y => y.Year == year.Year).ToList();
                int loopCounter = 0;
                var photoYear = new VMPhotoYear();
                photoYear.Year = year.Year;
                //TODO: Can Col1-4 be instanitated in the get set of their class?
                photoYear.Col1 = new List<VMphoto>();
                photoYear.Col2 = new List<VMphoto>();
                photoYear.Col3 = new List<VMphoto>();
                photoYear.Col4 = new List<VMphoto>();
                calculateColumnCounts(thisYear.Count, out itemsPerCol);

                foreach (var item in thisYear)
                {
                    loopCounter++;

                    if (loopCounter <= itemsPerCol[0])
                    {
                        photoYear.Col1.Add(item);
                    }
                    else if (loopCounter <= (itemsPerCol[0] + itemsPerCol[1]))
                    {
                        photoYear.Col2.Add(item);
                    }
                    else if (loopCounter <= (itemsPerCol[0] + itemsPerCol[1] + itemsPerCol[2]))
                    {
                        photoYear.Col3.Add(item);
                    }
                    else
                    {
                        photoYear.Col4.Add(item);
                    }
                }
                photoYears.Add(photoYear);
            }
            return photoYears;
        }
    }
}