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
                //    Fill_Amount(ddlAmount);
                //ddlAmount.Items.Insert(0, new ListItem("--Select--", "0"));
                Fill_Grid();
                Bind_ddlfin(ddlFyear);
                ClearControlls();
           }
        }
        public void ClearControlls()
        {
            //ddlFyear.SelectedValue = "";
            //ddlyear.SelectedValue = "";
            txtamount.Text = "";
            txtaddclass.Text = "";
            txtdescription.Text = "";
        }

        public void Fill_Grid()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_Addclass", con);
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

        //public void Fill_Amount(DropDownList ddl)
        //{
        //    if (con.State == ConnectionState.Open)
        //    {
        //        con.Close();
        //    }
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("SP_TBL_CLASSESFEES_GET", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        ddl.DataValueField = "FEE_ID";
        //        ddl.DataTextField = "FEE_AMOUNT";
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


        protected void txtsave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_Addclass", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@FYear", ddlFyear.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@ClassYear", ddlyear.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@ClassAmount", txtamount.Text);
            cmd.Parameters.AddWithValue("@Class", txtaddclass.Text);
            cmd.Parameters.AddWithValue("@ClassDicription", txtdescription.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Fill_Grid();
            ClearControlls();
        }

        protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}
