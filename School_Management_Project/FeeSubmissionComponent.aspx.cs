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
    public partial class FeeSubmissionComponent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           // Fill_Grid();                      
        }
        public void ClearControlls()
        {
            ddlFyear.SelectedValue = "";
            ddlFeeMode.SelectedValue = "";
            txtCompName.Text = "";
            txtamount.Text = "";
            txtdescription.Text = "";
        }

        //public void ClearControlls()
        //{
        //    ddlFyear.SelectedValue = "";
        //    ddlFeeMode.SelectedValue = "";
        //    txtCompName.Text = "";
        //    txtamount.Text = "";
        //    txtdescription.Text = "";

        //}
        //public void Fill_Grid()
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("sp_TBL_ComponentFee_get", con);
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


        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_TBL_CLASSESFEES_INSERT", con);
            cmd.CommandType = CommandType.StoredProcedure;          
            cmd.Parameters.AddWithValue("@FYEAR", ddlFyear.SelectedValue);
            cmd.Parameters.AddWithValue("@FEES_TYPE", ddlFeeMode.SelectedValue);
            cmd.Parameters.AddWithValue("@CLASS_COMP", txtCompName.Text);
            cmd.Parameters.AddWithValue("@FEE_AMOUNT", txtamount.Text);
            cmd.Parameters.AddWithValue("@DISCRIPTIONS", txtdescription.Text);           
            cmd.ExecuteNonQuery();
            {
                string message = "Your details have been saved successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            con.Close();
            ClearControlls();
            // Fill_Grid();
        }
        //protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "Mahi11")
        //    {
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("sp_TBL_ComponentFee_Edit", con);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@CF_id", e.CommandArgument);
        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //        Fill_Grid();
        //    }

        //    else if (e.CommandName == "mahi12")
        //    {
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("sp_TBL_ComponentFee_Edit", con);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@CF_id", e.CommandArgument);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataSet ds = new DataSet();
        //        da.Fill(ds);
        //        if (ds.Tables[0].Rows.Count > 0)
        //        {
        //            ddlFyear.SelectedValue= ds.Tables[0].Rows[0][1].ToString();
        //            ddlFeeMode.SelectedValue= ds.Tables[0].Rows[0][2].ToString();
        //            txtCompName.Text =ds.Tables[0].Rows[0][3].ToString();
        //            txtamount.Text = ds.Tables[0].Rows[0][4].ToString();
        //            txtdescription.Text=ds.Tables[0].Rows[0][5].ToString();               
        //            Button1.Text = "Update";
        //            ViewState["CF_id"] = e.CommandArgument;
        //        }
        //        con.Close();
        //        Fill_Grid();
        //    }
        //}
    }
}