using System;
using System.Collections.Generic;
using System.Linq;
using Walter.ViewModels;

namespace Walter.Models
{
    public class PhotoBusinessLayer
    {
        private static readonly WalterEntities Entities = new WalterEntities();

        public List<VmPhotoYear> GetPhotoYears()
        {
            List<VmPhoto> photos = Entities.Photos.ToList().Select(x => new VmPhoto
            {
                Title = x.Title,
                Url = x.URL,
                Day = x.Date.Day,
                Month = x.Date.Month,
                Year = x.Date.Year,
                Id = x.Id,
                TripReportURL = x.TripReportURL
            }).OrderByDescending(y => y.Year).ThenByDescending(m => m.Month).ThenByDescending(d => d.Day).ToList();

            return PutPhotosInColumns(photos);
        }


        public List<int> GetAlbumHostedByCounts()
        {
            var numbers = new List<int>();

            var picasaAlbums = 0;
            var shutterflyAlbums = 0;
            var facebookAlbums = 0;
            var googleAlbums = 0;
            var otherAlbums = 0;

            foreach (var album in Entities.Photos.ToList())
            {
                if (album.URL.ToLower().IndexOf("picasa") >= 0)
                {
                    picasaAlbums++;
                }
                else if (album.URL.ToLower().IndexOf("shutter") >= 0)
                {
                    shutterflyAlbums++;
                }
                else if (album.URL.ToLower().IndexOf("facebook") >= 0)
                {
                    facebookAlbums++;
                }
                else if (album.URL.ToLower().IndexOf("goo.gl/") >= 0)
                {
                    googleAlbums++;
                }
                else
                {
                    otherAlbums++;
                }
            }



            //Note that this order is very important, if change please update picasaAlbumsCount(), etc
            numbers.Add(picasaAlbums);
            numbers.Add(shutterflyAlbums);
            numbers.Add(facebookAlbums);
            numbers.Add(googleAlbums);
            numbers.Add(otherAlbums);

            return numbers;
        }


        public int picasaAlbumsCount()
        {
            var counts = GetAlbumHostedByCounts();
            return counts[0];
        }
        
        public int shutterflyAlbumsAlbumsCount()
        {
            var counts = GetAlbumHostedByCounts();
            return counts[1];
        }

        public int facebookAlbumsCount()
        {
            var counts = GetAlbumHostedByCounts();
            return counts[2];
        }

        public int googleAlbumsCount()
        {
            var counts = GetAlbumHostedByCounts();
            return counts[3];
        }

        public int otherAlbumsCount()
        {
            var counts = GetAlbumHostedByCounts();
            return counts[4];
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

        private List<VmPhotoYear> PutPhotosInColumns(List<VmPhoto> photos)
        {
            var photoYears = new List<VmPhotoYear>();
            var itemsPerCol = new int[4];
            var grouped = photos.GroupBy(y => y.Year).Select(group => new { Year = group.Key, Count = group.Count() });

            foreach (var year in grouped)
            {
                var thisYear = photos.Where(y => y.Year == year.Year).ToList();
                int loopCounter = 0;
                var photoYear = new VmPhotoYear
                {
                    Year = year.Year,
                    Col1 = new List<VmPhoto>(),
                    Col2 = new List<VmPhoto>(),
                    Col3 = new List<VmPhoto>(),
                    Col4 = new List<VmPhoto>()
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