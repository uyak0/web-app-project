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


        protected void Button1_Click(object sender, EventArgs e)
        {

        }


        protected void Grid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void checkout_Click(object sender, EventArgs e)
        {
            Random num = new Random();
            int idrand = num.Next(1, 99999);

            //insert data to tables

            Session["orderid"] = idrand;

            string sqlOrder = "INSERT INTO [Order] VALUES (@orderID, null, null, @username, null)";
            SqlCommand sqlOr;
            sqlOr = new SqlCommand(sqlOrder, conn);
            sqlOr.Parameters.AddWithValue("@orderID", idrand);
            sqlOr.Parameters.AddWithValue("@username", Session["username"]);

            sqlOr.ExecuteNonQuery();

        //    foreach (GridViewRow row in Grid1.Rows)
        //    {
        //        Label MenuID = (Label)row.Cells[0].FindControl("Label1");
        //        Label qty = (Label)row.Cells[5].FindControl("Label2");

        //        string sqlInsert = "INSERT INTO [OrderDetails] VALUES (@orderID, @productID, CONVERT(INT, @quantity), CONVERT(FLOAT, '" + row.Cells[4].Text + "'))";
        //        SqlCommand sqlIn;
        //        sqlIn = new SqlCommand(sqlInsert, conn);
        //        sqlIn.Parameters.AddWithValue("@orderID", idrand);
        //        sqlIn.Parameters.AddWithValue("@MenuID", MenuID.Text);
        //        sqlIn.Parameters.AddWithValue("@quantity", qty.Text);

        //        //sqlIn.Parameters.AddWithValue("@quantity", quantity);
        //        sqlIn.ExecuteNonQuery();

        //    }



        //    conn.Close();

        //    Response.Redirect("OrderPage.aspx");


        //}

        //protected void confirmButton_Click(object sender, EventArgs e)
        //{
        //    confirmButton.Visible = false;
        //    checkout.Visible = true;

        //    double total = 0.0;

        //    for (int i = 0; i < Grid1.Rows.Count; i++)
        //    {
        //        total += Double.Parse(Grid1.Rows[i].Cells[6].Text);
        //        Grid1.Rows[i].Cells[6].Visible = false;
        //    }
        //    subtotalDisplay.Text = total.ToString("#.##");
        //    string sqlTotal = "UPDATE ShoppingCart SET totalPrice = @total WHERE username = @username";
        //    SqlCommand sqltot;

        //    sqltot = new SqlCommand(sqlTotal, conn);
        //    sqltot.Parameters.AddWithValue("@total", total);
        //    sqltot.Parameters.AddWithValue("@username", Session["username"]);

        //    sqltot.ExecuteNonQuery();
        //    Session["total"] = subtotalDisplay.Text;
        }
    }
}