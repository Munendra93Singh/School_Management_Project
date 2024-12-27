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
    public partial class EnqForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fill_State(ddlState);
                Fill_City(ddlcity);
                Fill_Grid();
                ClearControlls();
            }
        }
        public void ClearControlls()
        {
            txtSfname.Text = "";
            txtfname.Text = "";
            txtdob.Text = "";
            txtmobile.Text = "";
            txtParentscontact.Text = "";
            ddlgender.SelectedValue = "";
            ddlCategory.SelectedValue = "";
            ddlOccupation.SelectedValue = "";
            ddlCourse.SelectedValue = "";
            ddlState.SelectedValue = "";
            ddlcity.SelectedItem.Text = "";
            txtPin.Text = "";
            txtemail.Text = "";
            txtqualification.Text = "";
            ddlrefered.Text = "";
        }
        public void Fill_Grid()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_Enquery", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "show");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ListView1.DataSource = ds;
                ListView1.DataBind();
            }
            else
            {
                ListView1.DataSource = null;
                ListView1.DataBind();
            }
            con.Close();
        }

        public void Fill_State(DropDownList ddl)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_State", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "show");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddl.DataValueField = "Sid";
                ddl.DataTextField = "State_Name";
                ddl.DataSource = ds;
                ddl.DataBind();
                ddl.Items.Insert(0, new ListItem("--Select--", "0"));
            }
            else
            {
                ddl.DataSource = null;
                ddl.DataBind();
            }
            con.Close();
        }

        public void Fill_City(DropDownList ddl)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_City", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "show");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddl.DataValueField = "Cid";
                ddl.DataTextField = "City_Name";
                ddl.DataSource = ds;
                ddl.DataBind();
                ddl.Items.Insert(0, new ListItem("--Select--", "0"));
            }
            else
            {
                ddl.DataSource = null;
                ddl.DataBind();
            }
            con.Close();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_Enquery", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@FullName", txtSfname.Text);
            cmd.Parameters.AddWithValue("@FatherName", txtfname.Text);
            cmd.Parameters.AddWithValue("@Sdob", txtdob.Text);
            cmd.Parameters.AddWithValue("@Mobile", txtmobile.Text);
            cmd.Parameters.AddWithValue("@mobile2", txtParentscontact.Text);
            cmd.Parameters.AddWithValue("@Gender", ddlgender.SelectedValue);
            cmd.Parameters.AddWithValue("@Category", ddlCategory.SelectedValue);
            cmd.Parameters.AddWithValue("@Goccupation", ddlOccupation.SelectedValue);
            cmd.Parameters.AddWithValue("@Class", ddlCourse.SelectedValue);
            cmd.Parameters.AddWithValue("@State_Name", ddlState.SelectedValue);
            cmd.Parameters.AddWithValue("@City_Name", ddlcity.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@PinCode", txtPin.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Qualification", txtqualification.Text);
            cmd.Parameters.AddWithValue("@Refered", ddlrefered.Text);
            cmd.ExecuteNonQuery();
            {
                string message = "Enquery Application have been saved successfully !!.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            con.Close();
            Fill_Grid();
            ClearControlls();
        }

        protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

    }
}