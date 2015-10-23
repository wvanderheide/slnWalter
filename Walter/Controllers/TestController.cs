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
        //master change 1
        //branch1 change 1
        //hot-fix change 1
        public ActionResult Index()
        {
            var b = new TestBusinessLayer();
            var x = b.GetVmForecast(2015, 4);
            return View("Index", x);
        }
    }
}