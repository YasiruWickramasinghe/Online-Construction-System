using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Construction_Project
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["customeremail"] != null)
            {

                //Textbox5.Text = Session["estmid"] as String;
                //TextBox5.Text = Session["estmid"].ToString();
                // Response.Write(Name);

                txtTo.Text = (string)Session["customeremail"];



            }

        }

        protected void Sendbtn_Click(object sender, EventArgs e)
        {
            try
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("chazone97@gmail.com", "123qwebnm");
                MailMessage msgobj = new MailMessage();
                msgobj.To.Add(txtTo.Text);
                msgobj.From = new MailAddress("chazone97@gmail.com");
                if (FileUpload1.HasFile)
                {
                    msgobj.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
                }
                msgobj.Subject = txtSub.Text;
                msgobj.Body = txtbdy.Text;
                client.Send(msgobj);
                Response.Write("Message has been sent successfully");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('message has been sent successfully');", true);



            }
            catch (Exception ex)
            {

                Response.Write("Could not send email" + ex.Message);


            }
        }
    }
}