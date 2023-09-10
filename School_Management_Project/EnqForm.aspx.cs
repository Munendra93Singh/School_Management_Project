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
           // if (!IsPostBack)
           // {
           //     Fill_State(ddlState);
           //     Fill_City(ddlcity);
           //     Fill_Grid();
           //     ClearControlls();
           //}
        }
        public void ClearControlls()
        { 
        
        }
        //public void Fill_Grid()
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("sp_TBL_StudentEnqury_get", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        grd.DataSource = ds;
        //        grd.DataBind();
        //    }
        //    else
        //    {
        //        grd.DataSource = null;
        //        grd.DataBind();
        //    }
        //    con.Close();
        //}

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

        //protected void btnsave_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("sp_TBL_StudentEnqury", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@FullName",txtSfname.Text);
        //    cmd.Parameters.AddWithValue("@FatherName",txtfname.Text);
        //    cmd.Parameters.AddWithValue("@Sdob",txtdob.Text);
        //    cmd.Parameters.AddWithValue("@Mobile",txtmobile.Text);
        //    cmd.Parameters.AddWithValue("@mobile2",txtParentscontact.Text);
        //    cmd.Parameters.AddWithValue("@Gender",ddlgender.SelectedValue);
        //    cmd.Parameters.AddWithValue("@Category",ddlCategory.SelectedValue);
        //    cmd.Parameters.AddWithValue("@Goccupation",ddlOccupation.SelectedValue);
        //    cmd.Parameters.AddWithValue("@Class",ddlCourse.SelectedValue);
        //    cmd.Parameters.AddWithValue("@State_Name",ddlState.SelectedValue);
        //    cmd.Parameters.AddWithValue("@City_Name",ddlcity.SelectedValue);
        //    cmd.Parameters.AddWithValue("@PinCode",txtPin.Text);
        //    cmd.Parameters.AddWithValue("@Email",txtemail.Text);
        //    cmd.Parameters.AddWithValue("@Qualification",txtqualification.Text);
        //    cmd.Parameters.AddWithValue("@Refered",ddlrefered.Text);
        //    cmd.Parameters.AddWithValue("@Address",txtaddres.Text);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    Fill_Grid();
        //}

        //protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        //{

        //}
       
    }
}