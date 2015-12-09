using System;
using System.Collections.Generic;
using System.Linq;
using Walter.ViewModels;

namespace Walter.Models
{
    public class HomeBusinessLayer
    {
        private static readonly WalterEntities Entities = new WalterEntities();

        public List<VmImage> GetImages()
        {
            return Entities.Images.ToList().Select(q => new VmImage
            {
                Id = q.Id,
                Url = q.Url
            }).ToList();
        }

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
            List<VmImage> retVal = new List<VmImage>();
            try
            {
                var images = GetImages();

                int min = 0;
                int max = images.Count;
                double d = Convert.ToDouble(max) / 10 + 0.5;
                int numberInSets = (int)d;

                //randomize images
                int rnd = getRandomNumber(min, max - 1);
                images = images.OrderBy(x => x.Id).ToList();
                if (rnd % 2 == 0)
                {
                    images = images.OrderBy(x => x.Url).ToList();
                    images.Reverse();
                }

                for (int j = 0; j < 10; j++)
                {
                    min = j * numberInSets;
                    max = j * numberInSets + numberInSets - 1;
                    max = (max > images.Count) ? images.Count : max;
                    rnd = getRandomNumber(min, max);
                    rnd = (rnd == 0) ? 1 : rnd;
                    retVal.Add(images[rnd - 1]);
                }

                //sort retVal randomly
                retVal = retVal.OrderBy(x => x.Id).ToList();
                if (rnd % 2 == 0)
                {
                    retVal = retVal.OrderBy(x => x.Url).ToList();
                    retVal.Reverse();
                }
            }
            catch
            {

            }
            return retVal;
        }

        public int DeleteImage(int Id)
        {
            string sql = "DELETE FROM [dbo].[Images] WHERE Id =" + Id.ToString();

            var x = Entities.Database;

            return x.ExecuteSqlCommand(sql);
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