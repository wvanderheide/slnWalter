using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;
using System.Linq;

namespace Walter.Controllers
{
    public class PhotoController : Controller
    {
        private static readonly PhotoBusinessLayer PhotoBusinessLayer = new PhotoBusinessLayer();
        private static readonly PageInfo PageInfo = new PageInfo();

        public ActionResult Index()
        {
            PageInfo.Title = "Photos";
            PageInfo.Icon = "<i class=\"fa fa-camera-retro fa-lg\" id=\"totalAlbums\"></i>";
            PageInfo.SubTitle = "Below are links to my photo albums and trip reports <i class=\"fa fa-book\" aria-hidden=\"true\"></i>.";
            PageInfo.Description = "I have been a fairly regular journal keeper over the years.  In 2014 I started doing my journals in Microsoft Word Docs.  Those documents should be the 'trip reports' for the year overview photos.  For example 2018 Overview, should have a trip report icon which links to my 2018 journal.  However, I don't wish to store my journal on-line, so one would need to access my computer or my external drive to read my journals.";

            ViewBag.PageInfo = PageInfo;

            return View("Index", PhotoBusinessLayer.GetPhotoYears());
        }
    }
}