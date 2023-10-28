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
    public partial class AddYearCat : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                Fill_Class(ddlclass);
                Bind_ddlfin(ddlFyear);
            }
            Fill_Grid();

        }
        public void Fill_Grid()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_ClassSem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "show");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ListView.DataSource = ds;
                ListView.DataBind();
            }
            else
            {
                ListView.DataSource = null;
                ListView.DataBind();
            }
            con.Close();
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
                ddl.DataTextField = "class";
                ddl.DataSource = ds;
                ddl.DataBind();
                ddl.Items.Insert(0, new ListItem("Selected", "0"));
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

        protected void btnsave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_ClassSem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");            
            cmd.Parameters.AddWithValue("@Fin_Year", ddlFyear.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Class", ddlclass.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Class_year", txtyear.Text);
            cmd.Parameters.AddWithValue("@Class_Description", txtdescription.Text);
            cmd.Parameters.AddWithValue("@cl_Id", ddlclass.SelectedValue);
            cmd.ExecuteNonQuery();
            con.Close();
            Fill_Grid();
        }
      
    }
}