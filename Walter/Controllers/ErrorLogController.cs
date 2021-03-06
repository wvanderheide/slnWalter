﻿using System;
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
    public class ErrorLogController : Controller
    {
        private static readonly PageInfo PageInfo = new PageInfo();
        public ActionResult Index()
        {
            PageInfo.Title = "Elmah Unique Errors";
            PageInfo.Icon = "<i class=\"fa fa-exclamation-triangle fa-lg\"></i>";
            PageInfo.SubTitle = "Data Source: [ELMAH_Error] table.";
            PageInfo.Description = null;

            ViewBag.PageInfo = PageInfo;

            var uri = Request.Url;

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Elmah"].ConnectionString;

            Session["connectionString"] = connectionString;

            string sql = "SELECT Min(StatusCode) as Code, Min(Type)as Type, Max(Sequence) as MaxSequence, [Message] ,COUNT(Message) AS RCount, max(DATEADD(mi, DATEDIFF(mi, GETUTCDATE(), GETDATE()), [TimeUtc]) ) as Newest_MtnTime, min(DATEADD(mi, DATEDIFF(mi, GETUTCDATE(), GETDATE()), [TimeUtc]) ) as Oldest_MtnTime FROM [ELMAH_Error] GROUP BY Message ORDER BY MaxSequence DESC";

            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand();

            if (TempData["ClearElmah"] != null)
            {
                try
                {
                    conn.Open();
                    cmd = new SqlCommand("Delete FROM [ELMAH_Error]", conn);
                    cmd.ExecuteReader();
                }
                finally
                {
                    cmd.Dispose();
                    conn.Close();
                }
            }

            conn.Open();
            cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();

            var vmErrors = new List<ViewModels.Error>();
            try
            {
                while (dr.Read())
                {
                    var error = new ViewModels.Error
                    {
                        MaxSequence = Convert.ToInt32(dr["MaxSequence"].ToString()),
                        Message = dr["Message"].ToString(),
                        Count = Convert.ToInt32(dr["RCount"].ToString()),
                        Newest = Convert.ToDateTime(dr["Newest_MtnTime"].ToString()),
                        Oldest = Convert.ToDateTime(dr["Oldest_MtnTime"].ToString()),
                        Type = dr["Type"].ToString(),
                        Code = dr["Code"].ToString()
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

            var vmError = new VmError
            {
                Errors = vmErrors,
                Sql = sql
            };

            return View("Index", vmError);
        }

        public ActionResult Detail()
        {
            int showErrors = 10;
            if (!int.TryParse(Request["showErrors"], out showErrors))
            {
                showErrors = 10;
            }

            int count = 0;
            if (!int.TryParse(Request["MaxSequence"], out count) || Session["connectionString"] == null)
                return RedirectToAction("Index");

            var maxSequence = Request["MaxSequence"].ToString();

            if (!int.TryParse(Request["count"], out count))
                return RedirectToAction("Index");

            if (count < showErrors)
                showErrors = count;

            PageInfo.Title = "Elmah Details";
            PageInfo.Icon = "<i class=\"fa fa-exclamation-triangle fa-lg\"></i>";
            PageInfo.SubTitle = Request["msg"];
            PageInfo.Description = null;

            ViewBag.PageInfo = PageInfo;

            string connectionString = Session["connectionString"].ToString();
            
            string sql = "SELECT top " + showErrors.ToString();
            sql += " Message";
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
            var ErrorDetails = new List<ErrorDetail>();
            try
            {
                while (dr.Read())
                {
                    var detail = new ErrorDetail
                    {
                        Message = dr["Message"].ToString(),
                        Sequence = Convert.ToInt32(dr["Sequence"].ToString()),
                        MtnTime = Convert.ToDateTime(dr["MtnTime"].ToString()),
                        Referer = dr["Referer"].ToString(),
                        UserAgent = dr["UserAgent"].ToString(),
                        ServerName = dr["ServerName"].ToString(),
                        Url = dr["URL"].ToString(),
                        AllXml = dr["AllXml"].ToString(),
                        QueryString = dr["QueryString"].ToString()
                    };

                    ErrorDetails.Add(detail);
                }
            }
            finally
            {
                dr.Close();
                dr.Dispose();
                cmd.Dispose();
                conn.Close();
            }

            var vmErrorDetails = new VmErrorDetails
            {
                Details = ErrorDetails,
                Sql = sql
            };

            return View("Detail", vmErrorDetails);
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

        public ActionResult ClearElmah()
        {
            TempData["ClearElmah"] = "Yes";
            return RedirectToAction("Index");
        }
    }
}