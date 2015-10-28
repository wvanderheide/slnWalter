using System;
using System.Collections.Generic;
using System.Linq;
using Walter.ViewModels;

namespace Walter.Models
{
    public class ImageBusinessLayer
    {
        private string _listOfRandoms = string.Empty;

        public List<VmImage> GetImages()
        {
            var db = new WalterEntities();
            
            return db.Images.ToList().Select(q => new VmImage
            {
                Id = q.Id,
                Url = q.Url
            }).ToList();
        }
        
        public List<VmImage> Get10RandomImages()
        {
            int lastRandom = -1;
            List<VmImage> retVal = new List<VmImage>();
            var images = GetImages();

            for (int j = 0; j < 10; j++)
            {
                var r = getRandomNumber(j, images.Count - 1);

                while (_listOfRandoms.IndexOf(r.ToString() + "|") >= 0)
                {
                    r = getRandomNumber(j, images.Count - 1);
                }

                _listOfRandoms += r.ToString() + "|";
                retVal.Add(images[r]);
            }

            return retVal;
        }
        
        public int DeleteImage(int Id)
        {
            var db = new WalterEntities();

            string sql = "DELETE FROM [dbo].[Images] WHERE Id =" + Id.ToString();

            var x = db.Database;

            return x.ExecuteSqlCommand(sql);
        }

        private int getRandomNumber(int min, int max)
        {
            var rnd = new Random(DateTime.Now.Millisecond);
            return rnd.Next(min, max);
        }
    }
}