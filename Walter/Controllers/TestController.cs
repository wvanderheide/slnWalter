using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Walter.Models;

namespace Walter.Controllers
{
    public class TestController : Controller
    {
        public ActionResult Index()
        {
            var b = new TestBusinessLayer();
            var x = b.GetVmForecast(2015, 4);

            //Branch 2 , change 3
            return View("Index", x);
        }
    }
}