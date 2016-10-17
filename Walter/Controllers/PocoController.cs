using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using Walter.SQLHelper;
using Walter.ViewModels;

namespace Walter.Controllers
{
    public class PocoController : Controller
    {
        private static readonly PageInfo PageInfo = new PageInfo();

        public ActionResult Index()
        {
            PageInfo.Title = "Class Generator";
            PageInfo.Icon = "<i class=\"fa fa-file-text-o fa-lg\"></i>";
            PageInfo.SubTitle = "Generate a C# class from a SQL Query result";

            ViewBag.PageInfo = PageInfo;

            if (TempData["Class"] != null)
            {
                ViewBag.GeneratedClass = TempData["Class"];
            }

            return View();
        }


        [HttpPost]
        public ActionResult Generate(string dbName, string className, string txtSql)
        {
            const string _className = "SUGGESTED_NAME_IS__STOREDPROC_RESULT";
            SqlDataReader dr1 = null;
            StringBuilder sb = new StringBuilder();

            if (className == null)
            {
                className = _className;
            }
            else if (className.Trim() == string.Empty)
            {
                className = _className;
            }

            try
            {
                dr1 = WalterSqlHelper.GetDataReaderFromSQL(txtSql);
                DataTable schemaTable = dr1.GetSchemaTable();

                string type = string.Empty;

                sb.AppendLine("public class " + className + "<br />{<br />//This class was auto-generated from " + Request.Url.ToString().ToLower().Replace("/generate", "") + "<br />");

                foreach (DataRow row in schemaTable.Rows)
                {
                    sb.Append("&nbsp;&nbsp;public ");

                    type = row["DataType"].ToString().ToLower().Replace("system.", "");

                    switch (type)
                    {
                        case "int32":
                            sb.Append("int");
                            break;
                        case "datetime":
                            sb.Append("DateTime");
                            break;
                        case "boolean":
                            sb.Append("bool");
                            break;
                        default:
                            sb.Append(type);
                            break;
                    }

                    if (type != "string")
                    {
                        sb.Append(Convert.ToBoolean(row["AllowDBNull"]) == true ? "? " : " ");
                    }
                    else
                    {
                        sb.Append(" ");
                    }

                    sb.Append(row["ColumnName"]);
                    sb.Append(" { get; set; }");
                    sb.AppendLine("<br />");
                }

                sb.AppendLine("}"); //end of Class

            }
            catch (Exception ex)
            {
                sb.Append("<br /><br />ERROR! " + ex.Message);
            }
            finally
            {
                if (dr1 != null) dr1.Close();
            }

            TempData["Class"] = sb.ToString();

            //return RedirectToAction("Index", new { sql = "true" });
            return RedirectToAction("Index");
        }
    }
}