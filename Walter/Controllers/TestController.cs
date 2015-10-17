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
        // GET: Test
        public ActionResult Index()
        {
            var b = new TestBusinessLayer();
            return View("Index", b.GetAllProducts(4));
        }
    }
}