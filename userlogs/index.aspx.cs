using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace userlogs
{
    public partial class index : System.Web.UI.Page
    {
        string connStr = "Data Source=JESSA\\SQLEXPRESS;Initial Catalog=UserLogDB;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();
            }
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            if (txtuserName.Text == "" || txtPassword.Text == "")
            {
                ErrorMgs.Text = "Please fill all the fields!";
                
            }else if (txtPassword.Text != txtconfirmPassword.Text)
            {
                ErrorMgs.Text = "Password does not match!";
            }
            else
            {
                
           
            using (SqlConnection conn = new SqlConnection(connStr))
            {
               
                SqlCommand cmd = new SqlCommand("UserAddEditDel", conn);
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Add stored procedure parameters
                    cmd.Parameters.AddWithValue("@UserId", string.IsNullOrEmpty(hfUserID.Value) ? Guid.NewGuid() : Guid.Parse(hfUserID.Value));
                    cmd.Parameters.AddWithValue("@Username", txtuserName.Text.Trim());
                    cmd.Parameters.AddWithValue("@PasswordHash", txtPassword.Text.Trim());
                    cmd.Parameters.AddWithValue("@LastName", txtlastName.Text.Trim());
                    cmd.Parameters.AddWithValue("@FirstName", txtfirstName.Text.Trim());
                    cmd.Parameters.AddWithValue("@MiddleName", txtmidName.Text.Trim());
                    cmd.Parameters.AddWithValue("@NickName", txtnickName.Text.Trim());
                    cmd.Parameters.AddWithValue("@EmailAddress", txtemailAdd.Text.Trim());
                    cmd.Parameters.AddWithValue("@Department", dlistDepartment.SelectedValue);
                    //cmd.Parameters.AddWithValue("@TimeZone", timeZone);
                    cmd.Parameters.AddWithValue("@UserType", RadiouserType.SelectedValue);
                    cmd.Parameters.AddWithValue("@UserStatus", dlistUserstat.SelectedValue);
                    //cmd.Parameters.AddWithValue("@ArchivedDate", archivedDate);
                    //cmd.Parameters.AddWithValue("@IsIn", isIn);
                    conn.Open();
                    clear();
                    // Execute the stored procedure
                    cmd.ExecuteNonQuery();
                    SuccessMgs.Text = "User Added Successfully!";
                }
                }
            }
            
        }void clear()
            {
                hfUserID.Value = "";
                txtuserName.Text = txtPassword.Text = txtlastName.Text = txtfirstName.Text = txtmidName.Text = txtnickName.Text = txtemailAdd.Text = "";
                dlistDepartment.SelectedValue = "0";
                RadiouserType.SelectedValue = "0";
                dlistUserstat.SelectedValue = "0";
                SuccessMgs.Text = ErrorMgs.Text = "";
            }
    }
}