using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;
using Mountain = Walter.Models.Mountain;

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

            var mountainList = mtns.Select(mtn => new ViewModels.Mountain
            {
                Id = mtn.id,
                Name = mtn.Name,
                Elevation = mtn.Elevation,
                Country = mtn.Country,
                State = mtn.State,
                Latitude = mtn.Latitude,
                Longitude = mtn.Longitude,
                MountainNote = mtn.MountainNote,
                SummitLog = mtn.MountainSummitLogs.Select(l => new ViewModels.MountainSummitLog
                {
                    Id = l.id,
                    MountainId = l.MountainID,
                    SummitDate = Convert.ToDateTime(l.SummitDate),
                    SummitNote = l.SummitNote
                }).ToList().OrderBy(y => y.SummitDate).ToList()
            }).ToList();

            return View("Index", new MountainViewModel { Mountains = mountainList.OrderByDescending(x => x.SummitLog.Last().SummitDate).ToList() });
        }

        [HttpPost]
        public ActionResult SaveMountain(ViewModels.Mountain m, string summitDate, string summitNote)
        {
            DateTime tempDate;

            if (ModelState.IsValid && DateTime.TryParse(summitDate, out tempDate))
            {
                var biz = new MountainBusinessLayer();
                biz.SaveMountain(m, summitDate, summitNote);
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