using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class ResumeController : Controller
    {
        private static readonly QuoteBusinessLayer QuoteBusinessLayer = new QuoteBusinessLayer();
        private readonly VmQuote _qandA = QuoteBusinessLayer.RandomQuote();

        public ActionResult Index()
        {
            ViewBag.RandomQuote = _qandA.Quote;
            ViewBag.Author = _qandA.Author;

            return View();
        }
    }
}
