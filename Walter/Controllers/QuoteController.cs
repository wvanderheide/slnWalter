using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class QuoteController : Controller
    {
        private static readonly QuoteBusinessLayer QuoteBusinessLayer = new QuoteBusinessLayer();
        private readonly VmQuote _qandA = QuoteBusinessLayer.RandomQuote();
        private static PageInfo PageInfo = new PageInfo();

        public ActionResult Index()
        {
            PageInfo.Title = "Quotes";
            PageInfo.Icon = "<i class=\"fa fa-quote-left\"></i>";
            PageInfo.SubTitle = "These are quotes that at the time of reading struck a chord with me, and as such I thought they were worth remembering.";
            PageInfo.RandomQuote = _qandA.Quote;
            PageInfo.QuoteAuthor = _qandA.Author;
            ViewBag.PageInfo = PageInfo;

            return View("Index", QuoteBusinessLayer.GetQuotes().OrderByDescending(x => x.Id).ToList());
        }
    }
}