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

        public List<VmImage> Get10RandomImages()
        {
            List<VmImage> retVal = new List<VmImage>();
            var images = GetImages();
            
            int min = 0;
            int max = images.Count;
            double d = Convert.ToDouble(max) / 10 + 0.5;
            int numberInSets = (int)d;

            //randomize images
            int rnd = getRandomNumber(min, max - 1);
            images = images.OrderBy(x => rnd).ToList();
            if(rnd % 2 == 0)
            {
                images.Reverse();
            }

            for (int j = 0; j < 10; j++)
            {
                min = j * numberInSets;
                max = j * numberInSets + numberInSets - 1;
                max = (max > images.Count) ? images.Count : max;
                rnd = getRandomNumber(min, max);
                rnd = (rnd == 0) ? 1 : rnd;
                retVal.Add(images[rnd-1]);
            }

            //sort retVal randomly
            retVal = retVal.OrderBy(x => rnd).ToList();
            if (rnd % 2 == 0)
            {
                retVal.Reverse();
            }
            return retVal;
        }

        public int DeleteImage(int Id)
        {
            string sql = "DELETE FROM [dbo].[Images] WHERE Id =" + Id.ToString();

            var x = Entities.Database;

            return x.ExecuteSqlCommand(sql);
        }

        private int getRandomNumber(int min, int max)
        {
            var rnd = new Random(DateTime.Now.Millisecond);
            return rnd.Next(min, max);
        }
    }
}