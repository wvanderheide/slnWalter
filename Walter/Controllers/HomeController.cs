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

        public ActionResult Index()
        {
            ViewBag.RandomQuote = _qandA.Quote;
            ViewBag.Author = _qandA.Author;

            return View("Index", ImageBusinessLayer.Get10RandomImages());
        }
    }
}