using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App_Project.Account
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(CreateUserWizard1.UserName);
            Guid newUserId = (Guid)newUser.ProviderUserKey;

            String username = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("UserName")).Text;
            String password = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Password")).Text;
            String email = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Email")).Text;

            string connectionString = ConfigurationManager.ConnectionStrings["SqlConn"].ConnectionString;
            string insertSql = "INSERT INTO Members(Id, UserName, Email) VALUES(@UserId, @UserName, @Email)";

            using(SqlConnection sqlConnection = new SqlConnection(connectionString))
            {
                sqlConnection.Open();

                SqlCommand sqlCommand = new SqlCommand(insertSql, sqlConnection); 
                sqlCommand.Parameters.AddWithValue("@UserName", username);
                sqlCommand.Parameters.AddWithValue ("@Password", password);
                sqlCommand.Parameters.AddWithValue("@Email", email);
                sqlCommand.ExecuteNonQuery();

                sqlConnection.Close();
            }
        }
    }
}