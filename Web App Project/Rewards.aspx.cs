using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project
{
    public partial class Rewards1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegisterRedirect(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void btnLoginRedirect(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnRedeemRedirect(object sender, EventArgs e)
        {
            Response.Redirect("Redeem.aspx");
        }
    }
}