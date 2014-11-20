using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class AddMember : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void btnCreateMember_Click(object sender, EventArgs e)
    {
        UserDetail ud = new UserDetail();
        try
        {
            string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");
            ud.SaveMember(txtMemberID.Text, txtUsername.Text, hashedPassword);
            ltrMessage.Text = "Member Successfully Created";
            txtMemberID.Text = "";
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtMemberID.Focus();
            }
        catch(Exception){
            ltrMessage.Text = "Member Already Exists";
        }
    }
}