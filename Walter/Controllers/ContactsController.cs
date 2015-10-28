using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Walter.Models;

namespace Walter.Controllers
{
    public class ContactsController : Controller
    {
        // GET: Contacts
        public ActionResult Index()
        {
            var q = new QuoteBusinessLayer();
            var temp = q.RandomQuote();
            ViewBag.RandomQuote = temp.Quote;
            ViewBag.Author = temp.Author;

            var b = new ContactsBusinessLayer();
            var contacts = b.GetContacts();

            contacts = contacts.OrderBy(f => f.FirstName).ToList();
            ViewBag.SortByLastName = false;

            if (TempData["SortByLastName"] != null)
            {
                contacts = contacts.OrderBy(x => x.LastName).ToList();
                ViewBag.SortByLastName = true;
            }

            return View("Index", contacts);
        }

        public ActionResult Sort(bool? SortByLastName)
        {
            TempData["SortByLastName"] = SortByLastName;

            return RedirectToAction("Index");
        }
    }
}