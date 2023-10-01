using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project
{
    public partial class Redeem : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings[].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select Points from [aspnet_Users]";
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<table border='1'>");
                table.Append("<tr><th>User's Points</th>");
                table.Append("</tr>");

                if(rd.HasRows)
                {
                    if(rd.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>" + rd[0] + "</td>");
                        table.Append("<td>" + rd[1] + "</td>");
                        table.Append("</tr>");
                    }
                }
                table.Append("</table" );
                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();
                
            }
        }
    }
}