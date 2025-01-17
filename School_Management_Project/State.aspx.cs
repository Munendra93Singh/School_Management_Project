﻿using System;
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
            SqlCommand cmd = new SqlCommand("sp_TBL_State", con);
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

        public void ClearControlls()
        {
            txtstatname.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_State", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");
            cmd.Parameters.AddWithValue("@State_Name", txtstatname.Text);           
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
            Fill_Grid();
        }      

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

        }

        protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {         

            try
            {
                // Here 'e.ItemIndex' gets the index of the item being deleted.
                ListViewItem item = ListView1.Items[e.ItemIndex];
                HiddenField hfEmployeeID = (HiddenField)item.FindControl("hfEmployeeID");

                string strConnection = @"Data Source = .; Initial Catalog = DB_SHOOLMANAGEMENT; Integrated Security= true;";
                SqlConnection con = new SqlConnection(strConnection);

                SqlCommand cmd = new SqlCommand();
                // delete query.
                cmd.CommandText = @"delete from TBL_State where Sid = '" + hfEmployeeID.Value + "'";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;

                con.Open();
                cmd.ExecuteNonQuery();               
                con.Close();
                Fill_Grid();
            }
            catch (Exception ex) { throw ex; }
        }

        protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e)
        {            
            ListView1.EditIndex = e.NewEditIndex;
            Fill_Grid();

        }
    }
    
}