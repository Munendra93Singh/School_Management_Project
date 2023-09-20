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
    public partial class RegistrationStudent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //    if (!IsPostBack)
            //    {
            //        Fill_State(ddlstate);
            //        Fill_City(ddlcity);
            //    }
        }

        public void ClearControlls()
        {
            ddlFinYear.Text = "";
            txtName.Text = "";
            txtFatherName.Text = "";
            txtdob.Text = "";
            txtdob.Text = "";
            txtContact.Text = "";
            txtemail.Text = "";
            ddlGender.SelectedValue = "";
            ddlblood.SelectedValue = "";
            ddlOccupation.SelectedValue = "";
            txtincome.Text = "";
            txtnationality.Text = "";
            txtEdQu.Text = "";
            txtsubject.Text = "";
            txtboard.Text = "";
            txtyear.Text = "";
            txtpercentage.Text = "";
            txtPrQu.Text = "";
            txtAddress.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            txtEdQu.Text = "";
            txtamount.Text = "";
        }
      

        //public void Fill_State(DropDownList ddl)
        //{
        //    if (con.State == ConnectionState.Open)
        //    {
        //        con.Close();
        //    }
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("sp_TBL_State_get", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        ddl.DataValueField = "Sid";
        //        ddl.DataTextField = "State_Name";
        //        ddl.DataSource = ds;
        //        ddl.DataBind();
        //        ddl.Items.Insert(0, new ListItem("--Select--", "0"));
        //    }
        //    else
        //    {
        //        ddl.DataSource = null;
        //        ddl.DataBind();
        //    }
        //    con.Close();
        //}

        //public void Fill_City(DropDownList ddl)
        //{
        //    if (con.State == ConnectionState.Open)
        //    {
        //        con.Close();
        //    }
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("sp_TBL_City_get", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        ddl.DataValueField = "Cid";
        //        ddl.DataTextField = "City_Name";
        //        ddl.DataSource = ds;
        //        ddl.DataBind();
        //        ddl.Items.Insert(0, new ListItem("--Select--", "0"));
        //    }
        //    else
        //    {
        //        ddl.DataSource = null;
        //        ddl.DataBind();
        //    }
        //    con.Close();
        //}

        protected void btnsave_Click(object sender, EventArgs e)
        {
            //String pass = "S023456789";
            //Random r = new Random();
            //char[] mypass = new char[10];
            //for (int i = 0; i < 10; i++)
            //{
            //    mypass[i] = pass[(int)(10 * r.NextDouble())];
            //}
            //TextBox1.Text = "" + new string(mypass) + "";
            //------------------------------
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_TBL_REGISTRATIONFORM_INSERT", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@STUDENT_FINYEAR", ddlFinYear.Text);
            cmd.Parameters.AddWithValue("@STUDENT_NAME", txtName.Text);
            cmd.Parameters.AddWithValue("@FATHER_NAME", txtFatherName.Text);
            cmd.Parameters.AddWithValue("@STUDENT_DOB", txtdob.Text);
            cmd.Parameters.AddWithValue("@STUDENT_MOB", txtContact.Text);
            cmd.Parameters.AddWithValue("@STUDENT_EMAIL", txtemail.Text);            
            cmd.Parameters.AddWithValue("@STUDENT_GENDER", ddlGender.SelectedValue);
            cmd.Parameters.AddWithValue("@STUDENT_BLOOD", ddlblood.SelectedValue);            
            cmd.Parameters.AddWithValue("@FATHER_OCCUPATION", ddlOccupation.SelectedValue);
            cmd.Parameters.AddWithValue("@FATHER_INCOME", txtincome.Text);
            cmd.Parameters.AddWithValue("@FATHER_CONTACT", txtcontact1.Text);
            cmd.Parameters.AddWithValue("@STUDENT_NATIONALITY", txtnationality.Text);
            cmd.Parameters.AddWithValue("@STUDENT_EDCATION", txtEdQu.Text);
            cmd.Parameters.AddWithValue("@STUDENT_SUBJECT", txtsubject.Text);
            cmd.Parameters.AddWithValue("@STUDENT_BOARD", txtboard.Text);
            cmd.Parameters.AddWithValue("@STUDENT_YEAR", txtyear.Text);
            cmd.Parameters.AddWithValue("@STUDENT_PERCENTAGE", txtpercentage.Text);
            cmd.Parameters.AddWithValue("@STUDENT_PRO_QUA", txtPrQu.Text);
            cmd.Parameters.AddWithValue("@STUDENT_ADDRESS", txtAddress.Text);
            cmd.Parameters.AddWithValue("@STUDENT_MEDI_HIS", TextBox2.Text);
            cmd.Parameters.AddWithValue("@STUDENT_INTER_CO", TextBox3.Text);
            cmd.Parameters.AddWithValue("@STUDENT_ACHI_STATE", TextBox4.Text);            
            cmd.Parameters.AddWithValue("@STUDENT_EDUCATION_QUA", txtEdQu.Text);         
            cmd.Parameters.AddWithValue("@StudentFee", txtamount.Text);
            cmd.Parameters.AddWithValue("@STUDENT_REG", TextBox1.Text);
            cmd.ExecuteNonQuery();
            {
                string message = "Registration Application have been saved successfully Submited !!.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            ClearControlls();
            con.Close();
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "yes")
            {
                txtamount.Visible = true;
            }
            else
            {
                txtamount.Visible = false;
            }
        }

        protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}

    
