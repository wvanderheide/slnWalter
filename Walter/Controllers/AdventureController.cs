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
            return View("Index",  b.GetPhotoYears());
        }
    }
}