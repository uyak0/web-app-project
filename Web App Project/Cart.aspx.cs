using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Drinkables.Cart
{
    public partial class AddToCart : System.Web.UI.Page
    {
        /*public string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStrings:ConnectionString"].ConnectionString;

        }*/
        SqlConnection conn;
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    }
}