using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string imageUrl = Request.QueryString["ImageUrl"];

                string query1 =  "SELECT Drinks_Name FROM Menu WHERE MenuID IN ('O001', 'O002', 'O003')";
                string query2 = "SELECT  Drinks_Name FROM Menu WHERE MenuID IN ('OS001', 'OS002', 'OS003', 'OS004', 'OS005')";
                string query3 = "SELECT  Drinks_Name FROM Menu WHERE MenuID IN ('OD001', 'OD002', 'OD003')";

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
                           // RadioButtonList1.DataValueField = "MenuID"; // Dont need display the ID
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
                            CheckBoxList2.DataTextField = "Drinks_Name";
                            CheckBoxList2.DataBind();
                        }
                    }




                }
            }
        }

        protected void btnBackMenu_Click(object sender, EventArgs e)
        {
            

            Response.Redirect("Menu.aspx");
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
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