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
    public partial class AddClass : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fill_Amount(ddlAmount);
                //ddlAmount.Items.Insert(0, new ListItem("--Select--", "0"));
                Fill_Grid();
            }
        }

       
          public void Fill_Grid()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_AddClass_get", con);
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
        
       
         public void Fill_Amount(DropDownList ddl)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_ComponentFee_get", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddl.DataValueField = "CF_id";
                ddl.DataTextField = "Camount";
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
    

        protected void txtsave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_AddClass",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Finyear",ddlFyear.SelectedValue);
            cmd.Parameters.AddWithValue("@Fyear",ddlyear.SelectedValue);
            cmd.Parameters.AddWithValue("@Amount",ddlAmount.SelectedValue);
            cmd.Parameters.AddWithValue("@classmode",txtaddclass.Text);
            cmd.Parameters.AddWithValue("@About",txtdescription.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}
