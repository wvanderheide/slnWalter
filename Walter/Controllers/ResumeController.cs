using System.Web.Mvc;
using Walter.Models;

namespace Walter.Controllers
{
    public class ResumeController : Controller
    {
        public ActionResult Index()
        {
            var q = new QuoteBusinessLayer();
            var temp = q.RandomQuote();
            ViewBag.RandomQuote = temp.Quote;
            ViewBag.Author = temp.Author;

            return View();
        }
    }
}
