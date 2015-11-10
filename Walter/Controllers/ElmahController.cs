using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class ElmahController : Controller
    {
        private static readonly PageInfo PageInfo = new PageInfo();
        public ActionResult Index()
        {
            string connectionString = "data source=SQL1\\Production; initial catalog=healthcomputingdb; integrated security=True;MultipleActiveResultSets=True";
            PageInfo.Title = "Elmah";
            PageInfo.Icon = "<i class=\"fa fa-exclamation-triangle fa-lg\"></i>";
            PageInfo.SubTitle = "FROM Elmah_Error table on " + connectionString;
            ViewBag.PageInfo = PageInfo;

            string sql = "SELECT TOP 100 *  FROM [healthcomputingdb].[dbo].[ELMAH_Error] order by [Sequence] desc";

            sql =
                "SELECT [Message] ,COUNT(Message) AS RCount, max(DATEADD(mi, DATEDIFF(mi, GETUTCDATE(), GETDATE()), [TimeUtc]) ) as Newest_MtnTime, min(DATEADD(mi, DATEDIFF(mi, GETUTCDATE(), GETDATE()), [TimeUtc]) ) as Oldest_MtnTime FROM[healthcomputingdb].[dbo].[ELMAH_Error] GROUP BY Message ORDER BY RCount DESC";

            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);

            SqlDataReader dr = cmd.ExecuteReader();
            var vmErrors = new List<VmElmah>();
            while (dr.Read())
            {
                var error = new VmElmah
                {
                    Sql = sql,
                    Message = dr[0].ToString(),
                    Count = Convert.ToInt32(dr["RCount"].ToString()),
                    Newest = Convert.ToDateTime(dr[2].ToString()),
                    Oldest = Convert.ToDateTime(dr[3].ToString())
                };

                vmErrors.Add(error);
            }


            return View("Index", vmErrors);
        }

        public ActionResult Detail()
        {
            if (Request["msg"] == null)
                return RedirectToAction("Index");


            PageInfo.Title = "Elmah Details";
            PageInfo.Icon = "<i class=\"fa fa-exclamation-triangle fa-lg\"></i>";
            PageInfo.SubTitle = Request["msg"];
            ViewBag.PageInfo = PageInfo;

            string connectionString = "data source=SQL1\\Production; initial catalog=healthcomputingdb; integrated security=True;MultipleActiveResultSets=True";
            string sql = "SELECT top 10 ";
            sql += "Message";
            sql += ",Sequence";
            sql += ", DATEADD(mi, DATEDIFF(mi, GETUTCDATE(), GETDATE()), [TimeUtc]) as MtnTime";
            sql += ",CAST(AllXml AS XML ).value('(/error/serverVariables/item[@name=''HTTP_REFERER'']/value/@string)[1]', 'nvarchar(max)') AS Referer";
            sql += ",CAST(AllXml AS XML ).value('(/error/serverVariables/item[@name=''HTTP_USER_AGENT'']/value/@string)[1]', 'nvarchar(max)') AS UserAgent";
            sql += ",CAST(AllXml AS XML ).value('(/error/serverVariables/item[@name=''SERVER_NAME'']/value/@string)[1]', 'nvarchar(max)') AS ServerName";
            sql += ",CAST(AllXml AS XML ).value('(/error/serverVariables/item[@name=''URL'']/value/@string)[1]', 'nvarchar(max)') AS Url";

            sql += " FROM Elmah_Error WHERE(Message = '" + Request["msg"] + "') ORDER BY Sequence DESC";

            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);

            SqlDataReader dr = cmd.ExecuteReader();
            var vmElmahDetails = new List<VmElmahDetail>();
            while (dr.Read())
            {
                var detail = new VmElmahDetail
                {
                    Message = dr["Message"].ToString(),
                    Sequence = Convert.ToInt32(dr["Sequence"].ToString()),
                    MtnTime = Convert.ToDateTime(dr["MtnTime"].ToString()),
                    Referer = dr["Referer"].ToString(),
                    UserAgent = dr["UserAgent"].ToString(),
                    ServerName = dr["ServerName"].ToString(),
                    Url = dr["URL"].ToString(),
                    Sql = sql
                };

                vmElmahDetails.Add(detail);
            }


            return View("Detail", vmElmahDetails);
        }
    }
}