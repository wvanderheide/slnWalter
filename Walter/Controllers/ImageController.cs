using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class ImageController : Controller
    {
        private static readonly ImageBusinessLayer ImageBusinessLayer = new ImageBusinessLayer();
        private static readonly QuoteBusinessLayer QuoteBusinessLayer = new QuoteBusinessLayer();
        private readonly VmQuote _qandA = QuoteBusinessLayer.RandomQuote();

        public ActionResult Index()
        {
            ViewBag.RandomQuote = _qandA.Quote;
            ViewBag.Author = _qandA.Author;
            
            return View("Index", ImageBusinessLayer.GetImages());
        }

        [HttpPost]
        public bool DeleteImage(int Id)
        {
            bool retVal = true;
            
            try
            {
                ImageBusinessLayer.DeleteImage(Id);
            }
            catch
            {
                retVal = false;
            }

            return retVal;
        }
    }
}