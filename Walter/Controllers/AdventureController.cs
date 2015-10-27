using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class AdventureController : Controller
    {
        public ActionResult Index()
        {
            var q = new QuoteBusinessLayer();
            var temp = q.RandomQuote();
            ViewBag.RandomQuote = temp.Quote;
            ViewBag.Author = temp.Author;

            var b = new AdventureBusinessLayer();
            return View("Index",  b.GetPhotoYears());
        }
    }
}