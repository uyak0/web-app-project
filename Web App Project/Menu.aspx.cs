using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project
{
    public partial class Menu1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Menu.mdf;Integrated Security=True";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    //string query = "SELECT * FROM Menu WHERE Category <> 'Custom'";
                    //SqlCommand command = new SqlCommand(query, connection);

                    //SqlDataReader reader = command.ExecuteReader();
                   // DataList1.DataSource = reader; //this two code can threw away after apply sqldatasource in Menu.aspx
                    //DataList1.DataBind();


                }


            }

        }
        protected void btnSelfPickUp_Click(object sender, EventArgs e)
        {
            string date = Request.Form["txtDate"];
            string time = Request.Form["txtTime"];
            // Perform any logic with the date and time inputs
        }

        protected void btnDelivery_Click(object sender, EventArgs e)
        {
            string date = Request.Form["txtDate"];
            string time = Request.Form["txtTime"];
            string address = Request.Form["txtAddress"];
            // Perform any logic with the date, time, and address inputs
        }

        protected void btnLatte_Click(object sender, EventArgs e)
        {
            Button btn = (Button)(sender);
           string imageUrl = btn.CommandArgument;
            Response.Redirect("Order.aspx?ImageUrl=" + imageUrl);
        }

    

        protected void btnvCart_Click(object sender, EventArgs e)
        {
            Session["SelectedDrinks"] = "Frappe";

            Response.Redirect("Cart.aspx");
        }

        protected void btnStartOrdering_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx");
        }

      

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}