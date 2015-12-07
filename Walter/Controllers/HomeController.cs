using System;
using System.Web.Mvc;
using Walter.Models;
using Walter.ViewModels;
using System.Linq;

namespace Walter.Controllers
{
    public class HomeController : Controller
    {
        private static Random rndNumber = new Random((int)DateTime.Now.Ticks);
        private static readonly HomeBusinessLayer HomeBusinessLayer = new HomeBusinessLayer();
        private static readonly MountainBusinessLayer MountainBusinessLayer = new MountainBusinessLayer();
        private static readonly PageInfo PageInfo = new PageInfo();

        public ActionResult Index()
        {
            PageInfo.Title = "Walter VanderHeide";
            PageInfo.Icon = "<i class=\"fa fa-home fa-lg\"></i>";
            PageInfo.SubTitle = "Web Developer, Outdoor Enthusiast";
            ViewBag.PageInfo = PageInfo;

            return View("Index", HomeBusinessLayer.Get10RandomImages());
        }

        public ActionResult Quote()
        {
            PageInfo.Title = "Quotes";
            PageInfo.Icon = "<i class=\"fa fa-quote-left\"></i>";
            PageInfo.SubTitle = "These are quotes that at the time of reading struck a chord with me, and as such I thought they were worth remembering.";
            ViewBag.PageInfo = PageInfo;

            return View("Quote", HomeBusinessLayer.GetQuotes().OrderByDescending(x => x.Id).ToList());
        }

        public ActionResult ImageAdmin()
        {
            PageInfo.Title = "Site Administration";
            PageInfo.Icon = "<i class=\"fa fa-cog fa-lg\"></i>";
            PageInfo.SubTitle = "Images: delete images used on the home page.";
            ViewBag.PageInfo = PageInfo;

            return View("ImageAdmin", HomeBusinessLayer.GetImages());
        }

        [HttpPost]
        public bool DeleteImage(int Id)
        {
            bool retVal = true;

            try
            {
                HomeBusinessLayer.DeleteImage(Id);
            }
            catch
            {
                retVal = false;
            }

            return retVal;
        }


        public ActionResult IpsumGenerator()
        {
            PageInfo.Title = "Ipsum Generator";
            PageInfo.Icon = "<i class=\"fa fa-file-text-o fa-lg\"></i>";
            PageInfo.SubTitle = "Funner than Loren Ipsum";

            ViewBag.PageInfo = PageInfo;
            string temp = string.Empty;
            string Ipsum = string.Empty;
            int p = 0;

            if (Request["p"] != null)
            {
                if (int.TryParse(Request["p"].ToString(), out p))
                {
                    Ipsum = "Mountain ipsum dolor sit amet ";
                    if (Request["q"] != null)
                    {
                        Ipsum = "Quote ipsum dolor sit amet ";
                    }
                    if (p > 10) p = 10;
                    var quotes = HomeBusinessLayer.GetQuotes();
                    var mtns = MountainBusinessLayer.GetMountains();

                    for (int i = 1; i <= p; i++)
                    {
                        temp = string.Empty;
                        if (Request["q"] != null)
                        {
                            foreach (var q in quotes)
                            {
                                temp += quotes[getRandomNumber(0, quotes.Count - 1)].Quote.Replace(".","") + ". ";
                            }
                        }
                        else
                        {
                            foreach (var m in mtns)
                            {
                                temp += mtns[getRandomNumber(0, mtns.Count - 1)].Name + " ";
                                temp += mtns[getRandomNumber(0, mtns.Count - 1)].Name + " ";
                                temp += mtns[getRandomNumber(0, mtns.Count - 1)].Name + " ";
                                temp += mtns[getRandomNumber(0, mtns.Count - 1)].Name + " ";
                                temp += mtns[getRandomNumber(0, mtns.Count - 1)].Name + " ";

                                if (m.Id % 3 > 0)
                                {
                                    temp = temp.Trim() + ". ";
                                }
                                else
                                {
                                    temp += " ";
                                }
                            }  
                        }

                        temp = temp.Substring(0, 500).Trim() + ".  ";
                        Ipsum = Ipsum + temp + "<br /><br/>";
                    }
                }
            }

            ViewBag.Ipsum = Ipsum.Replace("USER", "").Replace("WEB", "").Replace("test", "").Replace("tester", "");

            return View();
        }
        private static int getRandomNumber(int min, int max)
        {
            int r = rndNumber.Next(min, max);
            return r;
        }
    }
}