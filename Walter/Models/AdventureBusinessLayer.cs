using System;
using System.Collections.Generic;
using System.Linq;
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
                Url = x.URL,
                Day = x.Date.Day,
                Month = x.Date.Month,
                Year = x.Date.Year
            }).OrderByDescending(y => y.Year).ThenByDescending(m => m.Month).ThenByDescending(d => d.Day).ToList();

            return PutPhotosInColumns(photos);
        }

        private void CalculateColumnCounts(int totalItems, out int[] colCounts)
        {
            var itemsPerCol = new int[4];
            int remain = Convert.ToInt32(decimal.Remainder(totalItems, 4m));
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

        private List<VMPhotoYear> PutPhotosInColumns(List<VMphoto> photos)
        {
            var photoYears = new List<VMPhotoYear>();
            var itemsPerCol = new int[4];
            var grouped = photos.GroupBy(y => y.Year).Select(group => new { Year = group.Key, Count = group.Count() });

            foreach (var year in grouped)
            {
                var thisYear = photos.Where(y => y.Year == year.Year).ToList();
                int loopCounter = 0;
                var photoYear = new VMPhotoYear
                {
                    Year = year.Year,
                    Col1 = new List<VMphoto>(),
                    Col2 = new List<VMphoto>(),
                    Col3 = new List<VMphoto>(),
                    Col4 = new List<VMphoto>()
                };

                CalculateColumnCounts(thisYear.Count, out itemsPerCol);

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