using System;
using System.Linq;
using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class MountainController : Controller
    {
        public ActionResult Index()
        {
            //TODO:  Once I add authentication this Session Var will be come "real";
            Session["IsAdmin"] = true;

            var b = new MountainBusinessLayer();
            var mtns = b.GetMountains();

            //Most Recent Summit Date on top
            return View("Index", mtns.OrderByDescending(x => x.SummitLog.Last().SummitDate).ToList());
        }

        [HttpGet]
        public ActionResult Map()
        {
            var b = new MountainBusinessLayer();
            var mtns = b.GetMountains();
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
        public ActionResult SaveMountain(ViewModels.VMmountain m, string mtnSummitDate, string mtnSummitNote)
        {
            DateTime tempDate;
            if (ModelState.IsValid && DateTime.TryParse(mtnSummitDate, out tempDate))
            {
                var biz = new MountainBusinessLayer();
                biz.SaveMountain(m, mtnSummitDate, mtnSummitNote);
            }

            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult SaveLog(int mountainId, string summitDate, string summitNote)
        {
            DateTime tempDate;
            if (DateTime.TryParse(summitDate, out tempDate))
            {
                var biz = new MountainBusinessLayer();
                biz.SaveLog(mountainId, summitDate, summitNote);
            }

            return RedirectToAction("Index");
        }
    }
}