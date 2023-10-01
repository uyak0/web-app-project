using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Web_App_Project
{
    public partial class Cart
    {
        public string MenuID;
        public string Drinks_Name;
        public string Category;
        public float Price;
        public string ImageUrl;

        public void AddToCart()
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = Web_App_Project.DataField.AddParameter("@MenuID", MenuID, System.Data.SqlDbType.NVarChar, 10);
        }
    }

}