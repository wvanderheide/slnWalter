using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
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
            PageInfo.Title = "Elmah Unique Errors";
            PageInfo.Icon = "<i class=\"fa fa-exclamation-triangle fa-lg\"></i>";
            PageInfo.SubTitle = "Data Source: [healthcomputingdb].[dbo].[ELMAH_Error] table on SQL1\\Production";
            ViewBag.PageInfo = PageInfo;

            string sql = "SELECT TOP 100 *  FROM [healthcomputingdb].[dbo].[ELMAH_Error] order by [Sequence] desc";

            sql =
                "SELECT Max(Sequence) as MaxSequence, [Message] ,COUNT(Message) AS RCount, max(DATEADD(mi, DATEDIFF(mi, GETUTCDATE(), GETDATE()), [TimeUtc]) ) as Newest_MtnTime, min(DATEADD(mi, DATEDIFF(mi, GETUTCDATE(), GETDATE()), [TimeUtc]) ) as Oldest_MtnTime FROM [healthcomputingdb].[dbo].[ELMAH_Error] GROUP BY Message ORDER BY RCount DESC";

            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);

            SqlDataReader dr = cmd.ExecuteReader();
            var vmErrors = new List<Elmah>();
            try
            {
                while (dr.Read())
                {
                    var error = new Elmah
                    {
                        MaxSequence = Convert.ToInt32(dr["MaxSequence"].ToString()),
                        Message = dr["Message"].ToString(),
                        Count = Convert.ToInt32(dr["RCount"].ToString()),
                        Newest = Convert.ToDateTime(dr["Newest_MtnTime"].ToString()),
                        Oldest = Convert.ToDateTime(dr["Oldest_MtnTime"].ToString())
                    };

                    vmErrors.Add(error);
                }
            }
            finally
            {
                dr.Close();
                dr.Dispose();
                cmd.Dispose();
                conn.Close();
            }

            var vmElmahErrors = new VmElmahErrors
            {
                Errors = vmErrors,
                Sql = sql
            };
            return View("Index", vmElmahErrors);
        }

        public ActionResult Detail()
        {
            int showErrors = 10;
            if (!int.TryParse(Request["showErrors"], out showErrors))
            {
                showErrors = 10;
            }

            int count = 0;
            if (!int.TryParse(Request["MaxSequence"], out count))
                return RedirectToAction("Index");

            var maxSequence = Request["MaxSequence"].ToString();

            if (!int.TryParse(Request["count"], out count))
                return RedirectToAction("Index");

            if (count < showErrors)
                showErrors = count;

            PageInfo.Title = "Elmah Details";
            PageInfo.Icon = "<i class=\"fa fa-exclamation-triangle fa-lg\"></i>";
            PageInfo.SubTitle = Request["msg"];
            ViewBag.PageInfo = PageInfo;

            string connectionString = "data source=SQL1\\Production; initial catalog=healthcomputingdb; integrated security=True;MultipleActiveResultSets=True";
            string sql = "SELECT top " + showErrors.ToString();
            sql += " Message";
            sql += ",Type";
            sql += ",Sequence";
            sql += ",[AllXml]";
            sql += ", DATEADD(mi, DATEDIFF(mi, GETUTCDATE(), GETDATE()), [TimeUtc]) as MtnTime";
            sql += ",CAST(AllXml AS XML ).value('(/error/serverVariables/item[@name=''HTTP_REFERER'']/value/@string)[1]', 'nvarchar(max)') AS Referer";
            sql += ",CAST(AllXml AS XML ).value('(/error/serverVariables/item[@name=''HTTP_USER_AGENT'']/value/@string)[1]', 'nvarchar(max)') AS UserAgent";
            sql += ",CAST(AllXml AS XML ).value('(/error/serverVariables/item[@name=''SERVER_NAME'']/value/@string)[1]', 'nvarchar(max)') AS ServerName";
            sql += ",CAST(AllXml AS XML ).value('(/error/serverVariables/item[@name=''URL'']/value/@string)[1]', 'nvarchar(max)') AS Url";
            sql += ",CAST(AllXml AS XML ).value('(/error/serverVariables/item[@name=''QUERY_STRING'']/value/@string)[1]', 'nvarchar(max)') AS QueryString";

            sql += " FROM Elmah_Error WHERE(Message = (Select Message from Elmah_Error where Sequence = " + maxSequence + ")) ORDER BY Sequence DESC";

            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);

            SqlDataReader dr = cmd.ExecuteReader();
            var ElmahDetails = new List<ElmahDetail>();
            try
            {
                while (dr.Read())
                {
                    var detail = new ElmahDetail
                    {
                        Message = dr["Message"].ToString(),
                        Sequence = Convert.ToInt32(dr["Sequence"].ToString()),
                        MtnTime = Convert.ToDateTime(dr["MtnTime"].ToString()),
                        Referer = dr["Referer"].ToString(),
                        UserAgent = dr["UserAgent"].ToString(),
                        ServerName = dr["ServerName"].ToString(),
                        Url = dr["URL"].ToString(),
                        AllXml = dr["AllXml"].ToString(),
                        QueryString = dr["QueryString"].ToString(),
                        Type = dr["Type"].ToString()
                    };

                    ElmahDetails.Add(detail);
                }
            }
            finally
            {
                dr.Close();
                dr.Dispose();
                cmd.Dispose();
                conn.Close();
            }

            var vmElmahDetails = new VmElmahDetails
            {
                Details = ElmahDetails,
                Sql = sql
            };

            return View("Detail", vmElmahDetails);
        }


        [HttpPost]
        [ValidateInput(false)]
        public FileStreamResult CreateFile(string xml, int sequence)
        {
            var byteArray = Encoding.ASCII.GetBytes(xml);
            var stream = new MemoryStream(byteArray);
            string fileName = sequence + ".xml";
            return File(stream, "text/plain", fileName);
        }
    }
}