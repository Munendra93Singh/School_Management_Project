using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;


namespace School_Management_Project
{
    public partial class FeeSubmissionComponent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
            Fill_Grid();
            ClearControlls();
        }
        public void ClearControlls()
        {
            //ddlFyear.SelectedItem.Text = "";
            ddlFeeMode.SelectedItem.Text = "";
            txtCompName.Text = "";
            txtamount.Text = "";
            txtdescription.Text = "";
        }
        //-----------------------
        public void Fill_Grid()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_feecomponent", con);
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






            protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_feecomponent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "insert");            
            cmd.Parameters.AddWithValue("@FYEAR", ddlFyear.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@FEES_TYPE", ddlFeeMode.SelectedItem.Text);
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
            Fill_Grid();
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
                cmd.CommandText = @"delete from TBL_feecomponent where FEE_ID = '" + hfEmployeeID.Value + "'";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Fill_Grid();
            }
            catch (Exception ex) { throw ex; }

        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

        }
              
    }
}
        //protected void btnUpdate_Click(object sender, EventArgs e)
        //{
        //    SqlCommand cmd = new SqlCommand("sp_TBL_feecomponent", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@action", "update");


        //    cmd.Parameters.AddWithValue("@FEE_ID", Convert.ToInt32(ViewState["FEE_ID"]));
        //    cmd.Parameters.AddWithValue("@FYEAR", SqlDbType.VarChar).Value = ddlFyear.SelectedValue.Trim();
        //    cmd.Parameters.AddWithValue("@FEES_TYPE", SqlDbType.NChar).Value = ddlFeeMode.SelectedValue.Trim();
        //    cmd.Parameters.AddWithValue("@CLASS_COMP", SqlDbType.NVarChar).Value = txtCompName.Text.Trim();
        //    cmd.Parameters.AddWithValue("@FEE_AMOUNT", SqlDbType.NVarChar).Value = txtamount.Text.Trim();
        //    cmd.Parameters.AddWithValue("@DISCRIPTIONS", SqlDbType.NVarChar).Value = txtdescription.Text.Trim();

        //    con.Open();
        //    cmd.ExecuteNonQuery();
        //    con.Close();


        //    Fill_Grid();

        //    btnsave.Visible = true;
        //    btnUpdate.Visible = false;

        //    hfRecord.Value = string.Empty;

        //    ddlFyear.SelectedValue = String.Empty;
        //    ddlFeeMode.SelectedValue = String.Empty;
        //    txtCompName.Text = String.Empty;
        //    txtamount.Text = String.Empty;
        //    txtdescription.Text = String.Empty;

        //}


        //protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        //{
        //    switch (e.CommandName)
        //    {
        //        case ("EmpDelete"):
        //            int EmpID = Convert.ToInt32(e.CommandArgument);
        //            deleteEmployee();
        //            break;
        //        case ("EmpEdit"):
        //            EmpID = Convert.ToInt32(e.CommandArgument);
        //            UpdateEmployeeDetail(EmpID);
        //            break;
        //    }
        //}
        //void deleteEmployee()
        //{

        //    SqlCommand cmd = new SqlCommand("sp_TBL_feecomponent", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@action", "delete");
        //   // cmd.Parameters.AddWithValue("@FEE_ID", FEE_ID);
        //    con.Open();
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    Fill_Grid();
        //}
        //void UpdateEmployeeDetail(int FEE_ID)
        //{

        //    SqlCommand cmd = new SqlCommand("sp_TBL_feecomponent", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@action", "update");
        //    cmd.Parameters.AddWithValue("@FEE_ID", FEE_ID);
        //    con.Open();
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    if (dr.HasRows)
        //    {
        //        dr.Read();
        //        hfRecord.Value = dr["FEE_ID"].ToString();
        //        ddlFyear.SelectedValue = dr["FYEAR"].ToString();
        //        ddlFeeMode.SelectedValue = dr["FEES_TYPE"].ToString();
        //        txtCompName.Text = dr["CLASS_COMP"].ToString();                
        //        txtamount.Text = dr["FEE_AMOUNT"].ToString();
        //        txtdescription.Text = dr["DISCRIPTIONS"].ToString();
        //    }
        //    dr.Dispose();

        //    con.Close();           
        //    btnsave.Visible = false;
        //    Fill_Grid();
        //}


        //else if (btnsave.Text == "Update")
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("sp_TBL_feecomponent", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@action", "update");
        //    cmd.Parameters.AddWithValue("@FYEAR", ddlFyear.SelectedValue);
        //    cmd.Parameters.AddWithValue("@FEES_TYPE", ddlFeeMode.SelectedValue);
        //    cmd.Parameters.AddWithValue("@CLASS_COMP", txtCompName.Text);
        //    cmd.Parameters.AddWithValue("@FEE_AMOUNT", txtamount.Text);
        //    cmd.Parameters.AddWithValue("@DISCRIPTIONS", txtdescription.Text);
        //    cmd.Parameters.AddWithValue("@FEE_ID", ViewState["FEE_ID"]);
        //    cmd.ExecuteNonQuery();
        //    {
        //        string message = "Your details have been Updated successfully.";
        //        string script = "window.onload = function(){ alert('";
        //        script += message;
        //        script += "')};";
        //        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        //    }
        //    con.Close();
        //    ClearControlls();
        //    Fill_Grid();
        //}
    

        //protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "Delete")
        //    {

        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("sp_TBL_feecomponent", con);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@action", "delete");
        //        cmd.Parameters.AddWithValue("@FEE_ID", ID);
        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //        //Fill_Grid();
        //    }
        //    else if (btnsave.Text == "edit")
        //    {
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("sp_TBL_feecomponent", con);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@action", "edit");
        //        cmd.Parameters.AddWithValue("@FYEAR", ddlFyear.SelectedValue);
        //        cmd.Parameters.AddWithValue("@FEES_TYPE", ddlFeeMode.SelectedValue);
        //        cmd.Parameters.AddWithValue("@CLASS_COMP", txtCompName.Text);
        //        cmd.Parameters.AddWithValue("@FEE_AMOUNT", txtamount.Text);
        //        cmd.Parameters.AddWithValue("@DISCRIPTIONS", txtdescription.Text);
        //        cmd.ExecuteNonQuery();
        //        {
        //            string message = "Your details have been Edit successfully.";
        //            string script = "window.onload = function(){ alert('";
        //            script += message;
        //            script += "')};";
        //            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        //        }
        //        con.Close();
        //        ClearControlls();
        //        Fill_Grid();
        //    }
        //}

        //protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        //{

        //    DropDownList ddlFyear = (DropDownList)ListView1.Items[e.ItemIndex].FindControl("Label1");
        //    DropDownList ddlFeeMode = (DropDownList)ListView1.Items[e.ItemIndex].FindControl("Label2");
        //    TextBox txtCompName = (TextBox)ListView1.Items[e.ItemIndex].FindControl("Label3");
        //    TextBox txtamount = (TextBox)ListView1.Items[e.ItemIndex].FindControl("Label4");
        //    TextBox txtdescription = (TextBox)ListView1.Items[e.ItemIndex].FindControl("Label5");
        //    string ID = ListView1.DataKeys[e.ItemIndex].Value.ToString();
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("sp_TBL_feecomponent", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@action", "edit");
        //    cmd.Parameters.AddWithValue("@FEE_ID", ID);
        //    cmd.Parameters.AddWithValue("@FYEAR", ddlFyear.SelectedValue);
        //    cmd.Parameters.AddWithValue("@FEES_TYPE", ddlFeeMode.SelectedValue);
        //    cmd.Parameters.AddWithValue("@CLASS_COMP", txtCompName.Text);
        //    cmd.Parameters.AddWithValue("@FEE_AMOUNT", txtamount.Text);
        //    cmd.Parameters.AddWithValue("@DISCRIPTIONS", txtdescription.Text);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    ListView1.EditIndex = -1;
        //    Fill_Grid();
        //}
    
