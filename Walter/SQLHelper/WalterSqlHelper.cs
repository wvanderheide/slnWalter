using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Walter.SQLHelper
{
    public class WalterSqlHelper
    {
        public static string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["Poco"].ConnectionString;
        }

        public static void ExecuteNonQuery(string sql)
        {
            SqlHelper.ExecuteNonQuery(GetConnectionString(), CommandType.Text, sql);
        }
        public static SqlDataReader GetDataReaderFromSQL(string sql)
        {
            SqlDataReader dr = SqlHelper.ExecuteReader(GetConnectionString(), CommandType.Text, sql);
            return dr;
        }
    }
}