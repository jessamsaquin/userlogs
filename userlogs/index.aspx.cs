﻿using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

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
                LoadTimeZones();
            }
        }
        private void LoadTimeZones()
        {
            dlistTimeZone.Items.Clear();

            // Get all system time zones
            foreach (TimeZoneInfo timeZone in TimeZoneInfo.GetSystemTimeZones())
            {
                dlistTimeZone.Items.Add(new ListItem(timeZone.DisplayName, timeZone.BaseUtcOffset.TotalMinutes.ToString()));
            }

            // Select UTC as default
            dlistTimeZone.SelectedValue = "0";
        }
        protected void dlistTimeZone_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Example: Get the selected value
            string selectedTimeZone = dlistTimeZone.SelectedValue;

            // You can use this value for further logic
            //lblMessage.Text = "Selected Time Zone: " + selectedTimeZone;
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            if (txtuserName.Text == "" || txtPassword.Text == "")
            {
                ErrorMgs.Text = "Please fill all the fields!";

            }
            else if (txtPassword.Text != txtconfirmPassword.Text)
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
                        conn.Open();

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
                        cmd.Parameters.AddWithValue("@TimeZone", Convert.ToInt32(dlistTimeZone.SelectedValue));
                        cmd.Parameters.AddWithValue("@UserType", Convert.ToByte(RadiouserType.SelectedValue));
                        cmd.Parameters.AddWithValue("@UserStatus", Convert.ToByte(dlistUserstat.SelectedValue));

                        //cmd.Parameters.AddWithValue("@ArchivedDate", archivedDate);
                        //cmd.Parameters.AddWithValue("@IsIn", isIn);
                        

                        // Execute the stored procedure
                        cmd.ExecuteNonQuery();
                        clear();
                        SuccessMgs.Text = "User Added Successfully!";
                    }
                }
            }

        }
        void clear()
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