﻿using System;
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
            PageInfo.Title = "About Me";
            PageInfo.Icon = "<i class=\"fa fa-home fa-lg\"></i>";
            PageInfo.SubTitle = "Walter VanderHeide: Outdoor Enthusiast, Handyman, Web Developer";
            PageInfo.Description = homeDesc();

            ViewBag.PageInfo = PageInfo;

            return View("Index", HomeBusinessLayer.Get10RandomImages());
        }

        public ActionResult Quote()
        {
            PageInfo.Title = "Quotes";
            PageInfo.Icon = "<i class=\"fa fa-quote-left\"></i>";
            PageInfo.SubTitle = "These are quotes that at the time of reading struck a chord with me, and as such I thought they were worth remembering.";
            PageInfo.Description = null;

            ViewBag.PageInfo = PageInfo;

            return View("Quote", HomeBusinessLayer.GetQuotes().OrderByDescending(x => x.Id).ToList());
        }

        public ActionResult ImageAdmin()
        {
            PageInfo.Title = "Under Construction";
            PageInfo.Icon = "<i class=\"fa fa-home fa-lg\"></i>";
            PageInfo.SubTitle = "Coming Soon..";
            PageInfo.Description = null;

            ViewBag.PageInfo = PageInfo;

            return View("ImageAdmin");
        }
       

        public ActionResult IpsumGenerator()
        {
            PageInfo.Title = "Ipsum Generator";
            PageInfo.Icon = "<i class=\"fa fa-file-text-o fa-lg\"></i>";
            PageInfo.Description = null;

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
                        Ipsum = "Quote ipsum dolor sit amet. ";
                    }
                    else if (Request["b"] != null)
                    {
                        Ipsum = "Rock Band ipsum dolor sit amet ";
                    }
                    else if (Request["a"] != null)
                    {
                        Ipsum = "ACDC song ipsum dolor sit amet ";
                    }

                    if (p > 10) p = 10;
                    var quotes = HomeBusinessLayer.GetQuotes();
                    var mtns = MountainBusinessLayer.GetMountains();
                    var bands = HomeBusinessLayer.GetBands();
                    var acdcSongs = HomeBusinessLayer.GetAcdc();

                    for (var i = 1; i <= p; i++)
                    {
                        temp = string.Empty;
                        if (Request["a"] != null)
                        {
                            while (temp.Length < 500)
                            {
                                temp += acdcSongs[getRandomNumber(0, acdcSongs.Count - 1)].Song;
                                
                                temp = temp.Trim();

                                if (getRandomNumber(0, 1000) % 3 > 0)
                                {
                                    temp = temp.Trim() + ". ";
                                }
                                else
                                {
                                    temp += " ";
                                }
                            }
                        }
                        else if (Request["q"] != null)
                        {
                            while (temp.Length < 500)
                            {
                                temp += quotes[getRandomNumber(0, quotes.Count - 1)].Quote + " ";
                            }
                        }
                        else if (Request["b"] != null)
                        {
                            while (temp.Length < 500)
                            {
                                temp += bands[getRandomNumber(0, bands.Count - 1)].Name + " ";
                                temp += bands[getRandomNumber(0, bands.Count - 1)].Name + " ";
                                temp += bands[getRandomNumber(0, bands.Count - 1)].Name + " ";
                                temp += bands[getRandomNumber(0, bands.Count - 1)].Name + " ";
                                temp += bands[getRandomNumber(0, bands.Count - 1)].Name + " ";

                                if (getRandomNumber(0,100) % 2 > 0)
                                {
                                    temp = temp.Trim() + ". ";
                                }
                                else
                                {
                                    temp += " ";
                                }
                            }
                        }
                        else
                        {
                            while (temp.Length < 500)
                            {
                                temp += mtns[getRandomNumber(0, mtns.Count - 1)].Name + " ";
                                temp += mtns[getRandomNumber(0, mtns.Count - 1)].Name + " ";
                                temp += mtns[getRandomNumber(0, mtns.Count - 1)].Name + " ";
                                temp += mtns[getRandomNumber(0, mtns.Count - 1)].Name + " ";
                                temp += mtns[getRandomNumber(0, mtns.Count - 1)].Name + " ";

                                temp = temp.Trim();

                                if (getRandomNumber(0, 1000) % 3 > 0)
                                {
                                    temp = temp.Trim() + ". ";
                                }
                                else
                                {
                                    temp += " ";
                                }

                            }
                        }


                        if (temp.LastIndexOf(".", StringComparison.Ordinal) < temp.Length -1)
                        {
                            temp = temp.Trim() + ".";
                        }

                        Ipsum = Ipsum + temp + "<br /><br/>";
                    }
                }
            }

            

            ViewBag.Ipsum = Ipsum.Replace(".." , ".") + "<hr />";

            return View();
        }
        private static int getRandomNumber(int min, int max)
        {
            int r = rndNumber.Next(min, max);
            return r;
        }

        private string homeDesc()
        {
            return RenderRazorViewToString("_homeDesc");
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