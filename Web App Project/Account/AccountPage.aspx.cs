﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.Account
{
    public partial class AccountPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string GetEmail()
        {
            MembershipUser member = Membership.GetUser();
            string email = member.Email;
            return email;
        }
    }
}