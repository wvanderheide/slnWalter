using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class AdventureController : Controller
    {
        public ActionResult Index()
        {
            var b = new AdventureBusinessLayer();
            return View("Index", new AdventureViewModel { PhotoYears = b.GetPhotoYears() });
        }
    }
}