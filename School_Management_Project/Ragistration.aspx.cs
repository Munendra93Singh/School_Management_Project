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
    public partial class Ragistration : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                // check whether login name is unique 
                SqlCommand cmd = new SqlCommand("select * from Hr_admin where UserName = @lname", con);
                cmd.Parameters.Add("@lname", SqlDbType.VarChar, 30).Value = txtEmplId.Text.Trim();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblMsg.Text = "Login  Id name is not unqiue. Plase enter a different login name!";
                    return;
                }
                dr.Close();

                // check whether email address is unique
                cmd.Parameters.Clear();
                cmd.CommandText = "select * from Hr_admin where email = @email";
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = txtemail.Text;
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblMsg.Text = "Email address is not unqiue!";
                    return;
                }
                dr.Close();

                // get next HID
                cmd.CommandText = "select  isnull(max(hid),0) + 1 from Hr_admin";
                int hid = (Int32)cmd.ExecuteScalar();
                // insert row into Hr_admin
                cmd.Parameters.Clear();
                cmd.CommandText = "insert into Hr_admin (hid,UserName,pwd,fullname,email,RegDate,mobileno,Designation)values(@hid,@UserName,@pwd,@fullname,@email,getdate(),@mobileno,@Designation)";
                cmd.Parameters.Add("@hid", SqlDbType.Int).Value = hid;
                cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 10).Value = txtEmplId.Text.Trim();
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 10).Value = txtpass.Text.Trim();
                cmd.Parameters.Add("@fullname", SqlDbType.VarChar, 30).Value = txtename.Text.Trim();
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 30).Value = txtemail.Text.Trim();
                cmd.Parameters.Add("@mobileno", SqlDbType.VarChar, 50).Value = txtmobile.Text.Trim();
                cmd.Parameters.Add("@Designation", SqlDbType.VarChar, 50).Value = txtdiggnation.Text.Trim();
                if (cmd.ExecuteNonQuery() > 0)
                    lblMsg.Text = "Registration is successful. Please click <a href=Login.aspx>here</a> to login!";
                else
                    lblMsg.Text = "Sorry! Some error occured during registration!";
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
