﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class MountainController : Controller
    {
        private static readonly MountainBusinessLayer MountainBusinessLayer = new MountainBusinessLayer();
        private static readonly PageInfo PageInfo = new PageInfo();

        public ActionResult Index()
        {
            //TODO:  Once I add authentication this Session Var will be come "real";
            Session["IsAdmin"] = true;

            PageInfo.Title = "Mountains";
            PageInfo.Icon = "<span class=\"glyphicon glyphicon-picture fa-lg\"></span>";
            PageInfo.SubTitle = "Below is a list of mountains I have climbed with summit dates.";
            PageInfo.Description = "See pictures and learn more about my mountain adventures (including an incomplete list of canyons) at <a href=\"http://www.summitpost.org/user_page.php?user_id=23249\" target=\"_blank\">summitpost.org</a>.";

            ViewBag.Elevation = 0;
            ViewBag.PageInfo = PageInfo;

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
            return View("Index", MountainBusinessLayer.GetMountains().OrderByDescending(x => x.SummitLog.Last().SummitDate).ThenByDescending(i => i.Id).ToList());
        }
        
       
        public ActionResult Climbs()
        {
            PageInfo.Title = "Climbs";
            PageInfo.Icon = "<span class=\"glyphicon glyphicon-picture fa-lg\" id=\"totalClimbs\"></span>";
            PageInfo.SubTitle = "Below is a list of mountain climbs I have done arranged by date.";
            PageInfo.Description = null;

            List<VmClimbYear> climbs = new List<VmClimbYear>();

            if (TempData["startDate"] != null && TempData["endDate"] != null)
            {

                var startDate = String.Format("{0:MMM d, yyyy}", Convert.ToDateTime(TempData["startDate"]));
                 var endDate = String.Format("{0:MMM d, yyyy}", Convert.ToDateTime(TempData["endDate"]));
                
                 climbs = MountainBusinessLayer.ClimbYearsFiltered(Convert.ToDateTime(TempData["startDate"]), Convert.ToDateTime(TempData["endDate"]));

                if(climbs.Count == 0)
                {
                    PageInfo.SubTitle = "I did not climb any mountains between " + startDate + " and " + endDate + " inclusive.";
                }
                else
                {
                    PageInfo.SubTitle = "Below is a list of the mountains I climbed between " + startDate + " and " + endDate + " inclusive.";
                }
            }
            else
            {
                climbs = MountainBusinessLayer.ClimbYears();
            }

            ViewBag.PageInfo = PageInfo;

            return View("Climbs", climbs);
        }

        public ActionResult SummitPost()
        {
            PageInfo.Title = "Mountains & Rocks";
            PageInfo.Icon = "<span class=\"glyphicon glyphicon-picture fa-lg\" id=\"totalClimbs\"></span>";
            PageInfo.SubTitle = "from <a href=\"http://www.summitpost.org/users/vanman798/23249\" target=\"_blank\">summitpost.org</a>";
            PageInfo.Description = null;

            ViewBag.PageInfo = PageInfo;

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

            return RedirectToAction("SummitPost");
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


        public ActionResult RockAndIce()
        {
            PageInfo.Title = "Rock & Ice Climbs";
            PageInfo.Icon = "<span class=\"glyphicon glyphicon-picture fa-lg\" id=\"rockAndIceClimbs\"></span>";
            PageInfo.SubTitle = "Below is a list of rock and ice climbs I have done arranged by date.";
            PageInfo.Description = RockDesc();

            ViewBag.PageInfo = PageInfo;

            return View("RockAndIce");
        }
        
        private string RockDesc()
        {
            return RenderRazorViewToString("_rockDesc");
        }

        private string RenderRazorViewToString(string viewName)//, object model
        {
            //   ViewData.Model = model;
            using (var sw = new System.IO.StringWriter())
            {
                var viewResult = ViewEngines.Engines.FindPartialView(ControllerContext, viewName);
                var viewContext = new ViewContext(ControllerContext, viewResult.View, ViewData, TempData, sw);
                viewResult.View.Render(viewContext, sw);
                viewResult.ViewEngine.ReleaseView(ControllerContext, viewResult.View);

                return sw.GetStringBuilder().ToString();
            }
        }
    }
}