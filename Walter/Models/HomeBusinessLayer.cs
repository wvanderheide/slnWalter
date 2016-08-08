using System;
using System.Collections.Generic;
using System.Linq;
using Walter.ViewModels;

namespace Walter.Models
{
    public class HomeBusinessLayer
    {
        private static readonly WalterEntities Entities = new WalterEntities();
        private const int TotalNumberOfImagesInCarouselFolder = 11;

        public List<VmAcDc> GetAcdc()
        {
            return Entities.ACDCs.ToList().Select(q => new VmAcDc
            {
                Id = q.Id,
                Song = q.Song
            }).ToList();
        }

        public List<VmImage> Get10RandomImages()
        {
            List<VmImage> images = new List<VmImage>();

            try
            {
                int min = 0;
                int max = TotalNumberOfImagesInCarouselFolder;
                
                string imageName = string.Empty;

                for (int i = min; i < max; i++)
                {
                    if ((i + 1) < 10)
                        imageName = "00" + (i + 1).ToString() + ".jpg";
                    else if ((i + 1) < 100)
                        imageName = "0" + (i + 1).ToString() + ".jpg";
                    else
                        imageName = (i + 1).ToString() + ".jpg";

                    images.Add(new VmImage { Id = i + 1, Name = imageName });
                }

                int rnd = getRandomNumber(min, max - 1);

                if (rnd % 2 == 0)
                {
                    images.Reverse();
                }

                //int j = 1;
                //bool isNewRandom = true;
                //int loopCounter = 0;
                //while (j <= 10)
                //{
                //    loopCounter++;
                //    rnd = getRandomNumber(min, max);
                //    isNewRandom = true;

                //    if (j > 1)
                //    {
                //        foreach (var item in retVal)
                //        {
                //            if (item.Id == rnd)
                //            {
                //                isNewRandom = false;
                //                break;
                //            }
                //        }
                //    }

                //    if (isNewRandom)
                //    {
                //        var tem = images.Where(img => img.Id == rnd).ToList();
                //        retVal.Add(tem.First());
                //        j++;
                //    }
                //}
            }
            catch
            {

            }

            return images.Take(10).ToList();
        }


        public VmQuote RandomQuote()
        {
            var temp = GetQuotes();

            var rnd = new Random(DateTime.Now.Millisecond);

            return temp[rnd.Next(0, temp.Count - 1)];
        }

        public List<VmQuote> GetQuotes()
        {
            return Entities.Quotes.ToList().Select(q => new VmQuote
            {
                Id = q.Id,
                Quote = q.Quote1,
                Author = q.Author
            }).ToList();
        }

        public List<VmBand> GetBands()
        {
            return Entities.Bands.ToList().Select(q => new VmBand
            {
                Id = q.Id,
                Name = q.Name
            }).ToList();
        }

        private int getRandomNumber(int min, int max)
        {
            var rnd = new Random(DateTime.Now.Millisecond);
            return rnd.Next(min, max);
        }
    }
}