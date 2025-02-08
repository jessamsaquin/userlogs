using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace userlogs
{
    public partial class UserMngt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            string connectionString = "Data Source=JESSA\\SQLEXPRESS;Initial Catalog=UserLogDB;Integrated Security=True;Trust Server Certificate=True";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Users", conn);
                conn.Open();
                GridViewUsers.DataSource = cmd.ExecuteReader();
                GridViewUsers.DataBind();
            }
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            // Redirect to Add User page
            Response.Redirect("AddUser.aspx");
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            // Redirect to Edit User page with UserId
            string userId = (sender as Button).CommandArgument;
            Response.Redirect($"EditUser.aspx?UserId={userId}");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string userId = (sender as Button).CommandArgument;
            // Implement delete logic here
        }
    }
}