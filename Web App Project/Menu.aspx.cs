using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void btnStartOrdering_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }


}