﻿using System;
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
            //return View("Index", new MountainViewModel { Mountains = mtns.OrderByDescending(x => x.SummitLog.Last().SummitDate).ToList() });

            //Most recent on bottom
            return View("Index", new MountainViewModel { Mountains = mtns.OrderBy(x => x.SummitLog.Last().SummitDate).ToList() });
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