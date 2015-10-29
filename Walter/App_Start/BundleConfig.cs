using System.Web;
using System.Web.Optimization;

namespace Walter
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/js/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/js/tableSort").Include("~/Scripts/jquery.tablesorter.js"));

            bundles.Add(new ScriptBundle("~/js/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new ScriptBundle("~/js/site").Include(
                       "~/Scripts/site.js"));

            bundles.Add(new StyleBundle("~/css/site").Include("~/Content/site.css"));

            // Include line below to bundle Javascript and minify them.  
            BundleTable.EnableOptimizations = true;
        }
    }
}
