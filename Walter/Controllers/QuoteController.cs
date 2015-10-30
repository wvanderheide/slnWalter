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
        private static QuoteBusinessLayer quoteBusinessLayer = new QuoteBusinessLayer();
        private VmQuote QandA = quoteBusinessLayer.RandomQuote();

        public ActionResult Index()
        {
            ViewBag.RandomQuote = QandA.Quote;
            ViewBag.Author = QandA.Author;

            return View("Index",  quoteBusinessLayer.GetQuotes().OrderByDescending(x => x.Id).ToList());
        }
    }
}