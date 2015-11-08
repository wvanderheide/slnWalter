using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class ContactController : Controller
    {
        private static readonly ContactBusinessLayer ContactBusinessLayer = new ContactBusinessLayer();
        private static readonly HomeBusinessLayer HomeBusinessLayer = new HomeBusinessLayer();
        private readonly VmQuote _qandA = HomeBusinessLayer.RandomQuote();
        private static PageInfo PageInfo = new PageInfo();

        public ActionResult Index()
        {
            PageInfo.Title = "Contacts";
            PageInfo.Icon = "<i class=\"fa fa-envelope fa-lg\"></i>";
            PageInfo.SubTitle = "Below are my contacts.";
            PageInfo.RandomQuote = _qandA.Quote;
            PageInfo.QuoteAuthor = _qandA.Author;
            ViewBag.PageInfo = PageInfo;

            var contacts = ContactBusinessLayer.GetContacts();

            contacts = contacts.OrderBy(f => f.FirstName).ToList();
            ViewBag.SortByLastName = false;

            if (TempData["SortByLastName"] != null)
            {
                contacts = contacts.OrderBy(x => x.LastName).ToList();
                ViewBag.SortByLastName = true;
            }

            return View("Index", contacts);
        }

        public ActionResult Sort(bool? sortByLastName)
        {
            TempData["SortByLastName"] = sortByLastName;

            return RedirectToAction("Index");
        }
    }
}