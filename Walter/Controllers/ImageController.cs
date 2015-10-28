using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Walter.Models;

namespace Walter.Controllers
{
    public class ImageController : Controller
    {
        // GET: Image
        public ActionResult Index()
        {
            var b = new QuoteBusinessLayer();
            var q = b.GetQuotes();

            var temp = b.RandomQuote();
            ViewBag.RandomQuote = temp.Quote;
            ViewBag.Author = temp.Author;

            var i = new ImageBusinessLayer();

            return View("Index", i.GetImages());
        }

        [HttpPost]
        public bool DeleteImage(int Id)
        {
            bool retVal = true;
            var i = new ImageBusinessLayer();

            var x = i.DeleteImage(Id);

            try
            {
                i.DeleteImage(Id);
            }
            catch
            {
                retVal = false;
            }

            return retVal;
        }
    }
}