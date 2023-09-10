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
    public partial class Studentsearchview : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void imgbtn_Click(object sender, ImageClickEventArgs e)
        //{
        //    string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        //    SqlConnection sqlconn = new SqlConnection(mainconn);
        //    sqlconn.Open();
        //    SqlCommand sqlcomm = new SqlCommand();
        //    string con = "select * from TBL_AdmissionStudent where Rolnumber like '%'+@Rolnumber+'%' ";
        //    sqlcomm.CommandText = con;
        //    sqlcomm.Connection = sqlconn;
        //    sqlcomm.Parameters.AddWithValue("", txtsearch.Text);
        //    DataTable dt = new DataTable();
        //    SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
        //    sda.Fill(dt);
        //    grd.DataSource = dt;
        //    grd.DataBind();

        //    con.Clone();

        //}
    }
}