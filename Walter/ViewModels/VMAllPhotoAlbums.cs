using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Walter.ViewModels
{
    public class VMAllPhotoAlbums
    {
        public List<VmPhotoYear> AlbumsByYear { get; set; }
        public int picasaAlbumsCount { get; set; }
        public int shutterflyAlbumsAlbumsCount { get; set; }
        public int facebookAlbumsCount { get; set; }
        public int googleAlbumsCount { get; set; }
        public int otherAlbumsCount { get; set; }

        public int TotalAlbumsCount
        {
            get {

                return picasaAlbumsCount + shutterflyAlbumsAlbumsCount + facebookAlbumsCount + googleAlbumsCount + otherAlbumsCount;
            }
        }

        public int picasaAlbumsCountPercentage
        {
            get
            {

                return (picasaAlbumsCount/TotalAlbumsCount) * 100;
            }
        }

        public string shutterflyAlbumsAlbumsCountPercentage
        {
            get
            {
                var temp = (Convert.ToDecimal(shutterflyAlbumsAlbumsCount) / Convert.ToDecimal(TotalAlbumsCount)) * 100m;

                return temp.ToString("#.##") + "%";
            }
        }

        public string facebookAlbumsCountPercentage
        {
            get
            {
                var temp = (Convert.ToDecimal(facebookAlbumsCount) / Convert.ToDecimal(TotalAlbumsCount)) * 100m;

                return temp.ToString("#.##") + "%";
            }
        }


        public string googleAlbumsCountPercentage
        {
            get
            {
                var temp = (Convert.ToDecimal(googleAlbumsCount) / Convert.ToDecimal(TotalAlbumsCount)) * 100m;

                return temp.ToString("#.##") + "%";
            }
        }
    }
}