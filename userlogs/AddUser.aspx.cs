using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace userlogs
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string email = txtEmail.Text;
            string password = GenerateRandomPassword();

            string connectionString = "Data Source=JESSA\\SQLEXPRESS;Initial Catalog=UserLogDB;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Users (UserId, UserName, Password, EmailAddress) VALUES (@UserId, @UserName, @Password, @EmailAddress)", conn);
                cmd.Parameters.AddWithValue("@UserId", Guid.NewGuid());
                cmd.Parameters.AddWithValue("@UserName", username);
                cmd.Parameters.AddWithValue("@PasswordHash", password); // Hash this in production
                cmd.Parameters.AddWithValue("@EmailAddress", email);
                conn.Open();
                cmd.ExecuteNonQuery();
            }

            lblMessage.Text = "User added successfully!";
        }

        private string GenerateRandomPassword()
        {
            // Implement password generation logic
            return "TempPassword123";
        }
    }
}