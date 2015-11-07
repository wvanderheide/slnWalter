using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class HomeController : Controller
    {
        private static readonly HomeBusinessLayer HomeBusinessLayer = new HomeBusinessLayer();
        private static readonly QuoteBusinessLayer QuoteBusinessLayer = new QuoteBusinessLayer();
        private readonly VmQuote _qandA = QuoteBusinessLayer.RandomQuote();
        private static PageInfo PageInfo = new PageInfo();

        public ActionResult Index()
        {
            PageInfo.Title = "Walter VanderHeide";
            PageInfo.Icon = "<i class=\"fa fa-home fa-lg\"></i>";
            PageInfo.SubTitle = "Web Developer, Outdoor Enthusiast";
            PageInfo.RandomQuote = _qandA.Quote;
            PageInfo.QuoteAuthor = _qandA.Author;
            ViewBag.PageInfo = PageInfo;

            return View("Index", HomeBusinessLayer.Get10RandomImages());
        }

        public ActionResult ImageAdmin()
        {
            PageInfo.Title = "Site Administration";
            PageInfo.Icon = "<i class=\"fa fa-cog fa-lg\"></i>";
            PageInfo.SubTitle = "Images: delete images used on the home page.";
            PageInfo.RandomQuote = _qandA.Quote;
            PageInfo.QuoteAuthor = _qandA.Author;
            ViewBag.PageInfo = PageInfo;

            return View("ImageAdmin", HomeBusinessLayer.GetImages());
        }

        [HttpPost]
        public bool DeleteImage(int Id)
        {
            bool retVal = true;

            try
            {
                HomeBusinessLayer.DeleteImage(Id);
            }
            catch
            {
                retVal = false;
            }

            return retVal;
        }
    }
}