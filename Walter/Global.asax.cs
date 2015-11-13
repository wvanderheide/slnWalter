using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using Elmah;

namespace Walter
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        protected void ErrorLog_Filtering(object sender, ExceptionFilterEventArgs e)
        {
            // Cancels elmah logging for these conditions.

            //if (!Request.Url.ToString().ToLower().Contains(ConfigurationManager.AppSettings["klasresearchURL"], true) || Request.UserAgent.ToLower().Contains("bot", true) || Request.UserAgent.ToLower().Contains("spider", true) || Request.UserAgent.ToLower().Contains("crawler", true) || Request.UserAgent.ToLower().Contains("slurp", true) || Request.UserAgent.ToLower().Contains("ezooms", true))
            //{

            //    e.Dismiss();

            //}
            
            //if (Request.Url.ToString().ToLower().Contains("jw-icons.eot"))
            //{

            //    e.Dismiss();

            //}

        }

    }
}
