﻿using System;
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
            return View();
        }

        public ActionResult SaveMountain(Mountain m, string SummitDate, string SummitNote, string Stay)
        {
            MountainBusinessLayer x = new MountainBusinessLayer();
            x.SaveMountain(m, SummitDate, SummitNote);

            if (string.IsNullOrEmpty(Stay))
            {
                return RedirectToAction("Index");
            }
            else
            {
                return RedirectToAction("AddMountain");
            }
        }

        public ActionResult SaveLog(int MountainID, string SummitDate, string SummitNote)
        {
            MountainBusinessLayer x = new MountainBusinessLayer();
            x.SaveLog(MountainID, SummitDate, SummitNote);

            return RedirectToAction("Index");
        }

        public ActionResult Index()
        {
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


                List<Walter.ViewModels.MountainSummitLog> SummitLog = new List<Walter.ViewModels.MountainSummitLog>();

                foreach (var l in mtn.MountainSummitLogs)
                {
                    Walter.ViewModels.MountainSummitLog sl = new ViewModels.MountainSummitLog();

                    sl.Id = l.id;
                    sl.MountainId = l.MountainID;
                    sl.SummitDate = l.SummitDate;
                    sl.SummitNote = l.SummitNote;

                    SummitLog.Add(sl);
                }

                m.SummitLog = SummitLog;

                mountainList.Add(m);
            }


            // var mountainList = new List<Walter.ViewModels.Mountain>();

            //using (var db = new WalterEntities())
            //{
            //    var mountains = db.Mountains.SqlQuery("Select * from Mountains").ToList<Mountain>();

            //    foreach (var mtn in mountains)
            //    {
            //        var m = new ViewModels.Mountain
            //        {
            //            Name = mtn.Name
            //            ,
            //            Elevation = mtn.Elevation
            //            ,
            //            Country = mtn.Country
            //            ,
            //            State = mtn.State
            //            ,
            //            Latitude = mtn.Latitude
            //            ,
            //            Longitude = mtn.Longitude
            //            ,
            //            MountainNote = mtn.MountainNote

            //        };


            //        if (mtn.MountainSummitLogs.Count > 0)
            //        {
            //            List<Walter.ViewModels.MountainSummitLog> SummitLog = new List<Walter.ViewModels.MountainSummitLog>();

            //            foreach (var l in mtn.MountainSummitLogs)
            //            {
            //                Walter.ViewModels.MountainSummitLog sl = new ViewModels.MountainSummitLog();

            //                sl.Id = l.id;
            //                sl.MountainId = l.MountainID;
            //                sl.SummitDate = l.SummitDate;
            //                sl.SummitNote = l.SummitNote;

            //                SummitLog.Add(sl);
            //            }

            //            m.SummitLog = SummitLog;
            //        }

            //        mountainList.Add(m);
            //    }
            //}

            return View("Index", new MountainViewModel { Mountains = mountainList });
        }
    }
}