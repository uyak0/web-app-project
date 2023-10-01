using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Data.Common;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

namespace Web_App_Project
{
    public class DataField
    {
        public static string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["SqlConn"].ConnectionString.ToString();
            }
        }
        public static SqlParameter AddParameter(string name, object value, SqlDbType Dbtype, int size)
        {
            SqlParameter P = new SqlParameter();
            P.ParameterName = name;
            P.Value = value.ToString();
            P.SqlDbType = Dbtype;
            P.Size = size;
            P.Direction = ParameterDirection.Input;
            return P;
        }
    }

}