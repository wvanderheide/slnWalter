using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class HomeController : Controller
    {
        private static readonly ImageBusinessLayer ImageBusinessLayer = new ImageBusinessLayer();
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

            return View("Index", ImageBusinessLayer.Get10RandomImages());
        }
    }
}