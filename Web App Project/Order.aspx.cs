using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Security.Policy;
using System.Diagnostics;
using System.Configuration;

namespace Web_App_Project
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string imageUrl = Request.QueryString["ImageUrl"];
                lblTest.Text = Request.QueryString["Price"];

                string query1 =  "SELECT Price, Drinks_Name FROM Menu WHERE MenuID IN ('O001', 'O002', 'O003')";
                string query2 = "SELECT  Price, Drinks_Name FROM Menu WHERE MenuID IN ('OS001', 'OS002', 'OS003', 'OS004', 'OS005')";
                string query3 = "SELECT  Price, Drinks_Name FROM Menu WHERE MenuID IN ('OD001', 'OD002', 'OD003')";

                selectedDrinkImage.ImageUrl = imageUrl;

                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Menu.mdf;Integrated Security=True";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(query1, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            // Bind the data to the RadioButtonList.
                            RadioButtonList1.DataSource = reader;
                            RadioButtonList1.DataValueField = "Price"; // Dont need display the ID
                            RadioButtonList1.DataTextField = "Drinks_Name"; // The database field that holds the display text.
                            RadioButtonList1.DataBind();
                        }
                    }

                    // Bind data to CheckBoxList1
                    using (SqlCommand command1 = new SqlCommand(query2, connection))
                    {
                        using (SqlDataReader reader1 = command1.ExecuteReader())
                        {
                            CheckBoxList1.DataSource = reader1;
                            // CheckBoxList1.DataValueField = "OptionID";
                            CheckBoxList1.DataValueField = "Price"; // Dont need display the ID
                            CheckBoxList1.DataTextField = "Drinks_Name";
                            CheckBoxList1.DataBind();
                        }
                    }

                    // Bind data to CheckBoxList2
                    using (SqlCommand command2 = new SqlCommand(query3, connection))
                    {
                        using (SqlDataReader reader2 = command2.ExecuteReader())
                        {
                            CheckBoxList2.DataSource = reader2;
                            //CheckBoxList2.DataValueField = "OptionID";
                            CheckBoxList2.DataValueField = "Price";
                            CheckBoxList2.DataTextField = "Drinks_Name";
                            CheckBoxList2.DataBind();
                        }
                    }

                }
            }
        }

        protected void btnBackMenu_Click(object sender, EventArgs e)
        {
            int i = 0;
            decimal totalPrice = decimal.Parse(Request.QueryString["Price"]);
            decimal totalOrderPrice = decimal.Parse(Request.QueryString["totalOrderPrice"]);
            // Get the selected customization options and add their prices to the total price
           
            foreach (ListItem item in RadioButtonList1.Items)
            {
                if (item.Selected)
                {
                    decimal customizationPrice = decimal.Parse(item.Value);
                    totalPrice += customizationPrice;
                }
            }

            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    decimal customizationPrice = decimal.Parse(item.Value);
                    totalPrice += customizationPrice;
                }
            }

            foreach (ListItem item in CheckBoxList2.Items)
            {
                if (item.Selected)
                {
                    decimal customizationPrice = decimal.Parse(item.Value);
                    totalPrice += customizationPrice;
                }
            }
            i += 1;
            totalOrderPrice += totalPrice;

            int counter = 0;
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand("INSERT INTO CART (CartId, Price) VALUES ('" + (counter + i) + "', '" + totalPrice + "')", connection)) 
                { 
                    command.Parameters.Add(new SqlParameter("CartId", (counter + 1)));
                    command.Parameters.Add(new SqlParameter("Price", totalPrice));
                    command.ExecuteNonQuery();
                }
            }
            Response.Redirect("Menu.aspx?totalPrice=" + totalPrice + "&totalOrderPrice=" + totalOrderPrice);
        }

        protected void Grid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Grid1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
                
        }       

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }


    }
}