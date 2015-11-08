using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;
using System.Linq;

namespace Walter.Controllers
{
    public class PhotoController : Controller
    {
        private static readonly PhotoBusinessLayer PhotoBusinessLayer = new PhotoBusinessLayer();
        private static readonly HomeBusinessLayer HomeBusinessLayer = new HomeBusinessLayer();
        private readonly VmQuote _qandA = HomeBusinessLayer.RandomQuote();
        private static PageInfo PageInfo = new PageInfo();

        public ActionResult Index()
        {
            PageInfo.Title = "Photos";
            PageInfo.Icon = "<i class=\"fa fa-camera-retro fa-lg\" id=\"totalAlbums\"></i>";
            PageInfo.SubTitle = "Below are links to my photo albums.";
            PageInfo.RandomQuote = _qandA.Quote;
            PageInfo.QuoteAuthor = _qandA.Author;
            ViewBag.PageInfo = PageInfo;

            return View("Index", PhotoBusinessLayer.GetPhotoYears());
        }
    }
}