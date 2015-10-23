﻿using System;
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
            //this change made on hot-fix
            var b = new TestBusinessLayer();
            var x = b.GetVmForecast(2015, 4);
            return View("Index", x);
        }
    }
}