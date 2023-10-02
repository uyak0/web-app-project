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
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "MembersConnectionString";

            // Replace with the user ID you want to retrieve points for
            string userId = "@UserId";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // Query to retrieve points for a specific user
                    string query = "SELECT Points FROM UserPoints WHERE UserId = @UserId";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@UserId", userId);

                        // Execute the query and get the points balance
                        int pointsBalance = Convert.ToInt32(command.ExecuteScalar());

                        Console.WriteLine("Points Balance: " + pointsBalance);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("An error occurred: " + ex.Message);
            }
        }

    }
}