using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Web_App_Project
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void btnSubmitAll_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "DELETE FROM CART";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.ExecuteNonQuery();
                }
            }

            Response.Redirect("Success.aspx");
        }

    }
}