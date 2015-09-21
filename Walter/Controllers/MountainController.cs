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
        public ActionResult AddLog()
        {
            if (string.IsNullOrEmpty(Request.QueryString["MountainID"]))
            {
                return RedirectToAction("Index");
            }

            ViewBag.MountainName = Request.QueryString["MountainName"];
            ViewBag.MountainID = Request.QueryString["MountainID"];
            return View();
        }

        public ActionResult AddMountain()
        {
            return View("AddMountain", new Walter.ViewModels.Mountain());
        }

        public ActionResult SaveMountain(Walter.ViewModels.Mountain m, string SummitDate, string SummitNote, string Stay)
        {
            if (ModelState.IsValid)
            {
                MountainBusinessLayer x = new MountainBusinessLayer();
                x.SaveMountain(m, SummitDate, SummitNote);

                if (string.IsNullOrEmpty(Stay))
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    return RedirectToAction("AddMountain", new Walter.ViewModels.Mountain());
                }
            }
            else
            {
                return View("AddMountain", m);
            }
        }


        public ActionResult SaveLog(int MountainID, string SummitDate, string SummitNote)
        {
            MountainBusinessLayer x = new MountainBusinessLayer();
            x.SaveLog(MountainID, SummitDate, SummitNote);

            return RedirectToAction("Index");
        }

        //[ChildActionOnly]
        //public ActionResult GetAddNewLink()
        //{
        //    if (Convert.ToBoolean(Session["IsAdmin"]))
        //    {
        //        return PartialView("_AddNewLink");
        //    }
        //    else
        //    {
        //        return new EmptyResult();
        //    }
        //}

        public ActionResult Index()
        {
            //TODO:  Once I add authentication this Session Var will be come "real";
            Session["IsAdmin"] = true;

            var mountainList = new List<Walter.ViewModels.Mountain>();

            var b = new MountainBusinessLayer();
            List<Mountain> mtns = b.GetMountains();

            foreach (var mtn in mtns)
            {
                var m = new ViewModels.Mountain
                {
                    Id = mtn.id
                    ,
                    Name = mtn.Name
                    ,
                    Elevation = mtn.Elevation
                    ,
                    Country = mtn.Country
                    ,
                    State = mtn.State
                    ,
                    Latitude = mtn.Latitude
                    ,
                    Longitude = mtn.Longitude
                    ,
                    MountainNote = mtn.MountainNote
                };

                //Create the summitlog
                List<Walter.ViewModels.MountainSummitLog> SummitLog = new List<Walter.ViewModels.MountainSummitLog>();

                int count = mtn.MountainSummitLogs.Count;
                foreach (var l in mtn.MountainSummitLogs)
                {
                    Walter.ViewModels.MountainSummitLog sl = new ViewModels.MountainSummitLog();

                    sl.Id = l.id;
                    sl.MountainId = l.MountainID;
                    sl.SummitDate = Convert.ToDateTime(l.SummitDate);
                    sl.SummitNote = l.SummitNote;

                    SummitLog.Add(sl);
                }

                m.SummitLog = SummitLog.OrderBy(y => y.SummitDate).ToList();

                mountainList.Add(m);
            }
                        
            return View("Index", new MountainViewModel { Mountains = mountainList });
        }
    }
}