using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Walter.Models;

namespace Walter.Controllers
{
    public class QuoteController : Controller
    {
        // GET: Quote
        public ActionResult Index()
        {
            var b = new QuoteBusinessLayer();
            var q = b.GetQuotes();

            var temp = b.RandomQuote();
            ViewBag.RandomQuote = temp.Quote;
            ViewBag.Author = temp.Author;

            return View("Index", q.OrderByDescending(x => x.Id).ToList());
        }
    }
}