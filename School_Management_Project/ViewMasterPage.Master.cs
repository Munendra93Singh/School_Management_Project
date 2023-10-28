using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Management_Project
{
    public partial class ViewMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string username = Convert.ToString(Session["UserName"]).Trim();
                //string usertype = Convert.ToString(Session["Usertype"]).Trim();
                if (username == "")
                {
                    Server.Transfer("login.aspx");
                }
                else
                {
                    lbluser.Text = Convert.ToString(Session["fullname"]);
                    //lbldev.Text = Convert.ToString(Session["dlv"]);
                }

                //    if (usertype == "AD")
                //    {

                //        h1adduser.Visible = true;
                //        h1adduser.Enabled = true;
                //        h1counts.Visible = true;
                //        h1counts.Enabled = true;
                //        h1closetask.Visible = true;
                //        h1closetask.Enabled = true;
                //        h1pendingtask.Enabled = true;
                //        h1pendingtask.Visible = true;
                //    }

                //    else if (usertype == "SC")
                //    {

                //        h1adduser.Visible = false;
                //        h1adduser.Enabled = false;
                //        h1counts.Visible = false;
                //        h1counts.Enabled = false;
                //        h1closetask.Visible = true;
                //        h1closetask.Enabled = true;
                //        h1pendingtask.Enabled = true;
                //        h1pendingtask.Visible = true;
                //        h1aasertreports.Enabled = true;
                //        h1itasserts.Enabled = true;
                //    }
                //    else
                //    {
                //        h1adduser.Visible = false;
                //        h1adduser.Enabled = false;
                //        h1counts.Visible = false;
                //        h1counts.Enabled = false;
                //        h1closetask.Visible = false;
                //        h1closetask.Enabled = false;
                //        h1pendingtask.Enabled = false;
                //        h1pendingtask.Visible = false;
                //        h1aasertreports.Enabled = true;
                //        h1itasserts.Enabled = true;
                //        h1assertedit.Enabled = true;
                //    }
                //}

            }


        }

    }
}
