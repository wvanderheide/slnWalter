﻿using System.Web.Mvc;
using Walter.Models;

namespace Walter.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var q = new QuoteBusinessLayer();
            var temp = q.RandomQuote();
            ViewBag.RandomQuote = temp.Quote;
            ViewBag.Author = temp.Author;

            return View();
        }
        
        //public ActionResult Contact()
        //{
        //    ViewBag.Message = "Your contact page.";

        //    return View();
        //}
    }
}