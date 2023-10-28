using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace School_Management_Project
{
    public partial class FeeSubmission : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fill_Class(ddlclass);
                Bind_ddlfin(ddlFyear);
                Fill_Grid();

            }           

        }
        public void Fill_Grid()
        {         
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from TBL_AdmissionStudent", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ListView1.DataSource = ds;
            ListView1.DataBind();
        }
       
               public void Fill_Class(DropDownList ddl)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_Addclass", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "show");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddl.DataValueField = "Cl_id";
                ddl.DataTextField = "Class";
                ddl.DataSource = ds;
                ddl.DataBind();
                ddl.Items.Insert(0, new ListItem("SELECT", "0"));
            }
            else
            {
                ddl.DataSource = null;
                ddl.DataBind();
            }
            con.Close();

        }

        public void Bind_ddlfin(DropDownList ddl)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select FYear,Fy_Id from TBL_FYear", con);
            SqlDataReader dr = cmd.ExecuteReader();
            ddlFyear.DataSource = dr;
            ddlFyear.Items.Clear();
            ddlFyear.Items.Add("--Please Select country--");
            ddlFyear.DataTextField = "FYear";
            ddlFyear.DataValueField = "Fy_Id";
            ddlFyear.DataBind();
            con.Close();
        }

        protected void btnsave_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_fee", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@FYear", ddlFyear.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Class", ddlclass.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@St_RegName", txtRegName.Text);
            cmd.ExecuteNonQuery();
            {
                string message = "Your details have been saved successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            con.Close();
            Fill_Grid();
        }

        protected void btn1_Click(object sender, EventArgs e)
        {       
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from TBL_AdmissionStudent where Studntname like '%" + txtRegName.Text + "%'", con);  
        
            DataSet ds = new DataSet();
            da.Fill(ds);
            ListView1.DataSource = ds;
            ListView1.DataBind();
            if (ListView1.Items.Count == 0)
            {
                lblmsg.Text = "No Records Found";
                lblmsg.Visible = true;
            }
        }
    }
}