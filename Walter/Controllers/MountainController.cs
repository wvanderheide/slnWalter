using System;
using System.Linq;
using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class MountainController : Controller
    {
        private static readonly MountainBusinessLayer MountainBusinessLayer = new MountainBusinessLayer();
        private static readonly QuoteBusinessLayer QuoteBusinessLayer = new QuoteBusinessLayer();
        private readonly VmQuote _qandA = QuoteBusinessLayer.RandomQuote();

        public ActionResult Index()
        {
            //TODO:  Once I add authentication this Session Var will be come "real";
            Session["IsAdmin"] = true;

            ViewBag.RandomQuote = _qandA.Quote;
            ViewBag.Author = _qandA.Author;
            ViewBag.Elevation = 0;

            if (TempData["elevation"] != null)
            {
                if (TempData["elevation"].ToString() == "1")
                {
                    //Tallest on top
                    return View("Index", MountainBusinessLayer.GetMountains().OrderByDescending(x => x.Elevation).ThenByDescending(x => x.SummitLog.Last().SummitDate).ToList());
                }

                ViewBag.Elevation = 1;
                //Tallest on bottom
                return View("Index", MountainBusinessLayer.GetMountains().OrderBy(x => x.Elevation).ThenByDescending(x => x.SummitLog.Last().SummitDate).ToList());
            }
            
            //Most Recent Summit Date on top
            return View("Index", MountainBusinessLayer.GetMountains().OrderByDescending(x => x.SummitLog.Last().SummitDate).ToList());
        }

        public ActionResult Climbs()
        {
            ViewBag.RandomQuote = _qandA.Quote;
            ViewBag.Author = _qandA.Author;
            ViewBag.subTitle = "Below is a list of mountain climbs I have done arranged by date.";
            if (TempData["startDate"] != null && TempData["endDate"] != null)
            {

                var startDate = String.Format("{0:MMM d, yyyy}", Convert.ToDateTime(TempData["startDate"]));
                 var endDate = String.Format("{0:MMM d, yyyy}", Convert.ToDateTime(TempData["endDate"]));

                 ViewBag.subTitle = "Below is a list of mountains I climbed between " + startDate + " and " + endDate;

                var climbs = MountainBusinessLayer.ClimbYearsFiltered(Convert.ToDateTime(TempData["startDate"]), Convert.ToDateTime(TempData["endDate"]));
                return View("Climbs", climbs);
            }


            return View("Climbs", MountainBusinessLayer.ClimbYears());
        }

        public ActionResult ScreenScrapper()
        {
            ViewBag.RandomQuote = _qandA.Quote;
            ViewBag.Author = _qandA.Author;

            if (TempData["html"] == null)
            {
                UpdateHtml("http://www.summitpost.org/users/vanman798/23249");
            }

            ViewBag.html = TempData["html"];

            return View();
        }

        [HttpPost]
        public ActionResult UpdateHtml(string SummitPostUrl)
        {
            TempData["html"] = MountainBusinessLayer.GetSpHtml(SummitPostUrl);

            return RedirectToAction("ScreenScrapper");
        }

        [HttpGet]
        public ActionResult Map()
        {
            var mtns = MountainBusinessLayer.GetMountains();

            if (Request["Id"] != null)
            {
                ViewBag.Zoom = 14;
                return View("Map", mtns.Where(s => s.Id == Convert.ToInt32(Request["Id"])).ToList());
            }
            else if (Request["State"] != null)
            {
                ViewBag.Zoom = 7;
                return View("Map", mtns.Where(s => s.State == Request["State"]).OrderBy(a => a.Name).ToList());
            }
            else if (Request["Country"] != null)
            {
                ViewBag.Zoom = 4;
                return View("Map", mtns.Where(s => s.Country == Request["Country"]).OrderBy(a => a.Name).ToList());
            }
            //All
            ViewBag.Zoom = 3;
            return View("Map", mtns.OrderBy(a => a.Name).ToList());
        }

        [HttpPost]
        public ActionResult SortOnElevation(string elevation)
        {
            TempData["elevation"] = elevation;

            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult Filter(DateTime startDate, DateTime endDate)
        {
            TempData["startDate"] = startDate;

            TempData["endDate"] = endDate;

            return RedirectToAction("Climbs");
        }

        [HttpPost]
        public ActionResult SaveMountain(ViewModels.VmMountain m, string mtnSummitDate, string mtnSummitNote)
        {
            DateTime tempDate;
            if (ModelState.IsValid && DateTime.TryParse(mtnSummitDate, out tempDate))
            {
                MountainBusinessLayer.SaveMountain(m, mtnSummitDate, mtnSummitNote);
            }

            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult SaveLog(int mountainId, string summitDate, string summitNote)
        {
            DateTime tempDate;
            if (DateTime.TryParse(summitDate, out tempDate))
            {
                MountainBusinessLayer.SaveLog(mountainId, summitDate, summitNote);
            }

            return RedirectToAction("Index");
        }
    }
}