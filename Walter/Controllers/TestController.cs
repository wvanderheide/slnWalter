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
        //hot fix on main branch
        public ActionResult Index()
        {
            var b = new TestBusinessLayer();
            var x = b.GetVmForecast(2015, 4);
            return View("Index", x);
        }
    }
}