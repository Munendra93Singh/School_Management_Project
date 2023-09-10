using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;


namespace School_Management_Project
{
    public partial class Waytoemail : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage message = new MailMessage(txtemailto.Text, txtemailfrom.Text, txtsubject.Text, txtdescription.Text);
                if (uploadfile.HasFile)
                {
                    HttpFileCollection fc = Request.Files;
                    for (int i = 0; i <= fc.Count - 1; i++)
                    {
                        HttpPostedFile pf = fc[i];
                        Attachment attach = new Attachment(pf.InputStream, pf.FileName);
                        message.Attachments.Add(attach);
                    }
                }
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("munendrasingh93mahi@gmail.com", "M@hi2122431234");
                client.Send(message);
                status.Text = "message was sent successfully";
                
        }
            catch (Exception ex)
            {
                status.Text = ex.StackTrace;
            }
        }
    }
}
