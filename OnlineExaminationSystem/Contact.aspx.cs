using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net.Mail;
using System.Net;
public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("guideme16@gmail.com");
                mailMessage.To.Add("meprakashtamang@gmail.com");
                mailMessage.Subject = txtSubject.Text;

                mailMessage.Body = "<b>Sender Name</b>" + txtName.Text + "<br/>"
                    + "<b>Sender Email</b>" + txtEmail.Text + "<br/>"
                    + "<b>Comments</b>" + txtComment.Text;
                mailMessage.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient("smpt.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("guideme16@gmail.com", "tmgpr4k@sh4");
                smtpClient.Send(mailMessage);

                Label1.ForeColor = System.Drawing.Color.Black;
                Label1.Text = "Thank you For Contacting Us";
                txtName.Enabled = false;
                txtEmail.Enabled = false;
                txtSubject.Enabled = false;
                txtComment.Enabled = false;
                btnSubmit.Enabled = false;
            }
        }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "There is an Problem Sending Email.";
        }
    }
}