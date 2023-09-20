using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Collections.Specialized;
using System.Net;

namespace School_Management_Project
{
    public partial class AdmissionForm : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

           // if (!IsPostBack)
            //{
            //    Fill_Country(ddladdclas);
            //    Fill_City(ddlcity);
            //    Fill_State(ddlstate);
                  Fill_Grid();
            //    ClearControlls();
            //    //generatesno();
                  //GetGridValues();
            }

        public void ClearControlls()
        {
            ddlFinyear.SelectedValue = "";
            txtRollnumber.Text = "";
            txtstatus.Text = "";
            txtenrlonuber.Text = "";
            txtmobile.Text = "";
            txtSname.Text = "";
            txtfathername.Text = "";    
            txtmothername.Text = "";
            ddlgender.SelectedValue = "";
            txtdob.Text = "";
            txtadharnumber.Text = "";
            ddlreligion.SelectedValue = "";
            ddlCategory.SelectedValue = "";
            txtAdmDate.Text = "";
            ddladdclas.SelectedValue = "";
            ddloccupation.SelectedValue = "";
            txtmaritalstatus.Text = "";
            txtaddress.Text = "";
            ddlstate.SelectedValue = "";
            ddlcity.SelectedValue = "";
            txtpincode.Text = "";
            //cmd.Parameters.AddWithValue("@imageupload", load);
        }
        //public DataTable GetGridValues()
        //{
        //    DataTable dataTable = new DataTable();

        //    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString)) ;
        //    {
        //        using (SqlCommand command = new SqlCommand("sp_TBL_REGISTRATIONFORM_GET", con))
        //        {
        //            command.CommandType = CommandType.StoredProcedure;
        //            con.Open();
        //            using (SqlDataAdapter adapter = new SqlDataAdapter(command))
        //            {
        //                adapter.Fill(dataTable);
        //                SqlDataAdapter da = new SqlDataAdapter(command);
        //                DataSet ds = new DataSet();
        //                da.Fill(ds);
        //            }
        //        }
        //    }
        //    return dataTable;
        //}

        public void Fill_Grid()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_AdmissionStudent_GET", con);
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
        //private void generatesno()
        //{
        //    String mycon = "Data Source=.; Initial Catalog=DB_SHOOLMANAGEMENT; Integrated Security= True;";
        //    SqlConnection scon = new SqlConnection(mycon);
        //    String myquery = "select ADM_ID from TBL_AdmissionStudent";
        //    SqlCommand cmd = new SqlCommand();
        //    cmd.CommandText = myquery;
        //    cmd.Connection = scon;
        //    SqlDataAdapter da = new SqlDataAdapter();
        //    da.SelectCommand = cmd;
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    scon.Close();
        //    if (ds.Tables[0].Rows.Count < 1)
        //    {
        //        txtRollnumber.Text = "DS001";

        //    }
        //    else
        //    {
        //        String mycon1 = "Data Source=.; Initial Catalog=DB_SHOOLMANAGEMENT; Integrated Security= True;";
        //        SqlConnection scon1 = new SqlConnection(mycon1);
        //        String myquery1 = "select ADM_ID from TBL_AdmissionStudent";
        //        SqlCommand cmd1 = new SqlCommand();
        //        cmd1.CommandText = myquery1;
        //        cmd1.Connection = scon1;
        //        SqlDataAdapter da1 = new SqlDataAdapter();
        //        da1.SelectCommand = cmd1;
        //        DataSet ds1 = new DataSet();
        //        da1.Fill(ds1);
        //        int maxsno = 0;
        //        var part1 = "0";
        //        var part2 = "0";
        //        foreach (DataRow dr in ds.Tables[0].Rows)
        //        {
        //            var Student_Id = dr["ADM_ID"].ToString();
        //            part1 = Student_Id.Substring(1, 1);

        //            part2 = Student_Id.Substring(1, (Student_Id.Length) - 1);

        //            if (maxsno < Convert.ToInt16(part2))
        //            {
        //                maxsno = Convert.ToInt16(part2);
        //            }
        //        }

        //        maxsno = maxsno + 1;

        //        var newserial = part1 + maxsno.ToString("000");
        //        txtRollnumber.Text = newserial.ToString();
        //        scon1.Close();
        //    }
        //}
        //public void Fill_Country(DropDownList ddl)
        //{
        //    if (con.State == ConnectionState.Open)
        //    {
        //        con.Close();
        //    }
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("sp_TBL_AddClass_get", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        ddl.DataValueField = "Cl_id";
        //        ddl.DataTextField = "classmode";
        //        ddl.DataSource = ds;
        //        ddl.DataBind();
        //        ddl.Items.Insert(0, new ListItem("Selected", "0"));
        //    }
        //    else
        //    {
        //        ddl.DataSource = null;
        //        ddl.DataBind();
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
        //        ddl.Items.Insert(0, new ListItem("Selected", "0"));
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
        //        ddl.DataTextField = "City_name";
        //        ddl.DataSource = ds;
        //        ddl.DataBind();
        //        ddl.Items.Insert(0, new ListItem("Selected", "0"));
        //    }
        //    else
        //    {
        //        ddl.DataSource = null;
        //        ddl.DataBind();
        //    }
        //    con.Close();
        //}

        protected void btn_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Files/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            imgupload.SaveAs(folderPath + Path.GetFileName(imgupload.FileName));

            //Display the Picture in Image control.
            uploadimage.ImageUrl = "~/Files/" + Path.GetFileName(imgupload.FileName);
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            //string destinationaddr = "91 + txtmobile.Text";
            //string message = " You Have Been Registration For The Contest. Thanks!!";
            //String message1 = HttpUtility.UrlEncode(message);
            //using (var wb = new WebClient())
            //{
            //    byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
            //    {
            //        { "apikey" , "2eHUcOUa1AM-x41B46kEWPEUV3rQsnKfLVaSe0sQab"},
            //        {"numbers" , destinationaddr},
            //        {"message" , message},
            //        {"sender" , "TXTLCL"}

            //    });
            //    string result = System.Text.Encoding.UTF8.GetString(response);
            //    Response.Write(result);
            //    Label6.Text = "You have Successfully Registration";
            //}
            // }
            //  public void savedata()

            String pass = "S023456789";
            Random r = new Random();
            char[] mypass = new char[10];
            for (int i = 0; i < 10; i++)
            {
                mypass[i] = pass[(int)(10 * r.NextDouble())];
            }
            txtRollnumber.Text = "" + new string(mypass) + "";
          //  Label = "" + new string(mypass) + "";
            string load = "";
            if (btnsave.Text == "Save")
            {
                load = DateTime.Now.Ticks.ToString() + Path.GetFileName(imgupload.PostedFile.FileName);
                imgupload.SaveAs(Server.MapPath("FIleImage" + "\\" + load));
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_TBL_AdmissionStudent_Insert", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Yearname", ddlFinyear.SelectedValue);
                cmd.Parameters.AddWithValue("@Ragnumber", txtRollnumber.Text);
                cmd.Parameters.AddWithValue("@Stname", txtstatus.Text);
                cmd.Parameters.AddWithValue("@Enrolname", txtenrlonuber.Text);
                cmd.Parameters.AddWithValue("@Rolnumber", txtmobile.Text);
                cmd.Parameters.AddWithValue("@Studntname", txtSname.Text);
                cmd.Parameters.AddWithValue("@fathername", txtfathername.Text);
                cmd.Parameters.AddWithValue("@mothername", txtmothername.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlgender.SelectedValue);
                cmd.Parameters.AddWithValue("@DOB", txtdob.Text);
                cmd.Parameters.AddWithValue("@Adharnumber", txtadharnumber.Text);
                cmd.Parameters.AddWithValue("@Religion", ddlreligion.SelectedValue);
                cmd.Parameters.AddWithValue("@castcatagory", ddlCategory.SelectedValue);
                cmd.Parameters.AddWithValue("@Admissiondate", txtAdmDate.Text);
                cmd.Parameters.AddWithValue("@Class", ddladdclas.SelectedValue);
                cmd.Parameters.AddWithValue("@Groccupation", ddloccupation.SelectedValue);
                cmd.Parameters.AddWithValue("@Mariedstatus", txtmaritalstatus.Text);
                cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
                cmd.Parameters.AddWithValue("@state", ddlstate.SelectedValue);
                cmd.Parameters.AddWithValue("@city", ddlcity.SelectedValue);
                cmd.Parameters.AddWithValue("@pincode", txtpincode.Text);
                cmd.Parameters.AddWithValue("@imageupload", load);
                cmd.ExecuteNonQuery();
                {
                    string message = "Your details have been saved successfully.";
                    string script = "window.onload = function(){ alert('";
                    script += message;
                    script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                }
                con.Close();
                Fill_Grid();
                //ClearControlls();
               // generatesno();
            }
        }

        protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }

}
