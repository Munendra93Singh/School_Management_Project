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

            if (!IsPostBack)
            {
                Fill_Class(ddladdclas);
                //Fill_Classyear(ddlclassyear);               
                Fill_State(ddlstate);
                Fill_Grid();
                ClearControlls();
                //generatesno();
                //GetGridValues();
            }
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
            ddladdclas.SelectedValue = "0";
            ddlclassyear.SelectedValue = "0";
            ddlcity.SelectedValue = "0";
            ddlstate.SelectedValue = "0";
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
            SqlCommand cmd = new SqlCommand("sp_TBL_Admission", con);
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
       public void Bind_ddlClassyear()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand(" select * from TBL_ClassSem where cl_Id ='" + ddladdclas.SelectedValue + "'", con);

            SqlDataReader dr = cmd.ExecuteReader();
            ddlclassyear.DataSource = dr;
            ddlclassyear.Items.Clear();
            ddlclassyear.Items.Add("--Please Select city--");
            ddlclassyear.DataTextField = "Class_year";
            ddlclassyear.DataValueField = "cls_id";
            ddlclassyear.DataBind();
            con.Close();

        }

        public void Bind_ddlclaasfees()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand(" select * from TBL_ClassSem where cl_Id ='" + ddladdclas.SelectedValue + "'", con);

            SqlDataReader dr = cmd.ExecuteReader();
            ddlclaasfees.DataSource = dr;
            ddlclaasfees.Items.Clear();
            ddlclaasfees.Items.Add("--Please Select Amount--");
            ddlclaasfees.DataTextField = "Class_Description";
            ddlclaasfees.DataValueField = "cls_id";
            ddlclaasfees.DataBind();
            con.Close();
        }


        public void Fill_State(DropDownList ddl)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_TBL_State", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "show");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddl.DataValueField = "Sid";
                ddl.DataTextField = "State_Name";
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
        public void Bind_ddlCity()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from TBL_City where Sid ='" + ddlstate.SelectedValue + "'", con);

            SqlDataReader dr = cmd.ExecuteReader();
            ddlcity.DataSource = dr;
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--Please Select city--");
            ddlcity.DataTextField = "City_name";
            ddlcity.DataValueField = "Cid";
            ddlcity.DataBind();
            con.Close();

        }
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
            //        {
            //            { "apikey" , "2eHUcOUa1AM-x41B46kEWPEUV3rQsnKfLVaSe0sQab"},
            //            {"numbers" , destinationaddr},
            //            {"message" , message},
            //            {"sender" , "TXTLCL"}

            //        });
            //    string result = System.Text.Encoding.UTF8.GetString(response);
            //    Response.Write(result);
            //    Label6.Text = "You have Successfully Registration";
            //}

            //public void savedata();

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
                SqlCommand cmd = new SqlCommand("sp_TBL_Admission", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "insert");
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
                cmd.Parameters.AddWithValue("@Class", ddladdclas.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Groccupation", ddloccupation.SelectedValue);
                cmd.Parameters.AddWithValue("@Mariedstatus", txtmaritalstatus.Text);
                cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
                cmd.Parameters.AddWithValue("@state", ddlstate.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@city", ddlcity.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@pincode", txtpincode.Text);
                cmd.Parameters.AddWithValue("@imageupload", load);
                cmd.Parameters.AddWithValue("@classyear", ddlclassyear.SelectedItem.Text);
                cmd.ExecuteNonQuery();
                {
                    //string message = "Your details have been saved successfully.";
                    string script = "window.onload = function(){ alert('";
                    //script += message;
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

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bind_ddlCity();
        }

        protected void ddladdclas_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bind_ddlClassyear();
            Bind_ddlclaasfees();
        }
    }

}
