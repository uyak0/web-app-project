using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void startOrderBtn(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void tableNo_TextChanged(object sender, EventArgs e)
        {

        }
    }
}