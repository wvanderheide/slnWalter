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
			return View("AddMountain", new ViewModels.Mountain());
		}

		public ActionResult SaveMountain(ViewModels.Mountain m, string summitDate, string summitNote)
		{
			DateTime tempDate;
			if (!ModelState.IsValid || !DateTime.TryParse(summitDate, out tempDate))
				return View("AddMountain", m);


			var biz = new MountainBusinessLayer();
			if (!biz.SaveMountain(m, summitDate, summitNote))
				return View("AddMountain", m);

			return RedirectToAction("Index");
		}


		public ActionResult SaveLog(int mountainId, string summitDate, string summitNote)
		{
			var x = new MountainBusinessLayer();
			x.SaveLog(mountainId, summitDate, summitNote);

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
	}
}