using System.Web.Mvc;
using Walter.Models;

namespace Walter.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var q = new QuoteBusinessLayer();
            var temp = q.RandomQuote();
            ViewBag.RandomQuote = temp.Quote;
            ViewBag.Author = temp.Author;

            var i = new ImageBusinessLayer();
            var vm = i.Get10RandomImages();

            return View("Index", vm);
        }
    }
}