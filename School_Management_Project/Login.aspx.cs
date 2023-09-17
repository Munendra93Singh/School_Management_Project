using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace School_Management_Project
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection (ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
   
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Hr_admin where UserName = @lname and pwd = @pwd", con);
                cmd.Parameters.Add("@lname", SqlDbType.VarChar, 10).Value = txtemail.Text;
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 10).Value = txtpass.Text;

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session.Add("hid", dr["hid"]);
                    Session.Add("fullname", dr["fullname"]);
                    Session.Add("UserName", txtemail.Text.Trim());
                    Session.Add("dlv", dr["dlv"]);
                    // update MEMBERS table for DLV
                    dr.Close();
                    cmd.CommandText = "update Hr_admin set dlv = getdate() where UserName = @lname";
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    lblMsg.Text = "Invalid Login-Please Try Agaian!";
                    dr.Close();
                }

            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error --> " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}