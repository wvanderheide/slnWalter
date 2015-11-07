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
        private static PageInfo PageInfo = new PageInfo();


        public ActionResult Index()
        {
            PageInfo.Title = "Images Admin";
            PageInfo.Icon = "<i class=\"fa fa-cog fa-lg\"></i>";
            PageInfo.SubTitle = "Delete images used on the home page.";
            PageInfo.RandomQuote = _qandA.Quote;
            PageInfo.QuoteAuthor = _qandA.Author;
            ViewBag.PageInfo = PageInfo;
            
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