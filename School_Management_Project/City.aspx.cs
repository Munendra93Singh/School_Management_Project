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
    public partial class City : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Fill_Country(ddlState);
            }
            Fill_Grid();

        }


        public void Fill_Grid()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_City_get", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                grd.DataSource = ds;
                grd.DataBind();
            }
            else
            {
                grd.DataSource = null;
                grd.DataBind();
            }
            con.Close();
        }



        public void Fill_Country(DropDownList ddl)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_State_get", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddl.DataValueField = "Sid";
                ddl.DataTextField = "State_Name";
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_City_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@State_Name",ddlState.SelectedValue);
            cmd.Parameters.AddWithValue("@City_Name", txtcity.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Fill_Grid();
        }

        protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

    }
}