using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;
using System.Linq;

namespace Walter.Controllers
{
    public class ResumeController : Controller
    {
        private static readonly HomeBusinessLayer HomeBusinessLayer = new HomeBusinessLayer();
        private readonly VmQuote _qandA = HomeBusinessLayer.RandomQuote();
        private static PageInfo PageInfo = new PageInfo();

        public ActionResult Index()
        {
            PageInfo.Title = "Resume";
            PageInfo.Icon = "<i class=\"fa fa-book\"></i>";
            PageInfo.SubTitle = "Trust Walter for all your website and web application needs.";
            PageInfo.RandomQuote = _qandA.Quote;
            PageInfo.QuoteAuthor = _qandA.Author;
            ViewBag.PageInfo = PageInfo;

            return View();
        }
    }
}
