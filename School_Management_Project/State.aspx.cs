using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;


namespace School_Management_Project
{
    public partial class State : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Fill_Grid();
            }
        }
        public void Fill_Grid()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_State_get", con);
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

        public void ClearControlls()
        {
            txtstatname.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_State_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@State_Name", txtstatname.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            ClearControlls();
            Fill_Grid();
        }

        protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}