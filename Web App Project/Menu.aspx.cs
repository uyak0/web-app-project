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
        List<MenuItem> selectedDrinks = new List<MenuItem>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Menu.mdf;Integrated Security=True";
                selectedDrinks = new List<MenuItem>();
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    //string query = "SELECT * FROM Menu WHERE Category <> 'Custom'";
                    //SqlCommand command = new SqlCommand(query, connection);

                    //SqlDataReader reader = command.ExecuteReader();
                    // DataList1.DataSource = reader; //this two code can threw away after apply sqldatasource in Menu.aspx
                    //DataList1.DataBind();

                    string totalOrderPrice = Request.QueryString["totalOrderPrice"];
                  
                    if (totalOrderPrice==null)
                    {
                        vCart.Text += " ( 0.00 )";
                    }
                    else
                    {
                        vCart.Text = "View Cart (" + totalOrderPrice + ")";
                    }
                    
                }


            }

        }
     

        protected void btnLatte_Click(object sender, EventArgs e)
        {
            Button btn = (Button)(sender);
            string imageUrl = btn.CommandArgument;
            string totalOrderPrice = Request.QueryString["totalOrderPrice"];
            if(totalOrderPrice == null)
            {
                totalOrderPrice = "0.00";
            }
            Response.Redirect("Order.aspx?" + imageUrl + "&totalOrderPrice=" + totalOrderPrice);

           

            // Redirect to Order.aspx, passing the selected drinks and total price as query parameters.
            Response.Redirect($"Order.aspx?totalPrice={totalOrderPrice}");
        }

    

        protected void btnvCart_Click(object sender, EventArgs e)
        {
            

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