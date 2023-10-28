using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Management_Project
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string username = Convert.ToString(Session["UserName"]).Trim();
                if (username == "")
                {
                    Server.Transfer("login.aspx");
                   //Session.Abandon("Dashboard.aspx");
                }
                else
                {

                }
            }

        }

        protected void ShowData()
        {

        }
    }
}