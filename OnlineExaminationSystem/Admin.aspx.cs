using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUsername.Focus();
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        UserDetail ud = new UserDetail();
        try
        {
            string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");
            DataTable dt = ud.CheckMember(txtUsername.Text, hashedPassword);

            if (dt.Rows.Count > 0)
            {
                Session["Member"] = txtUsername.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                ltrMessage.Text = "Invallid User or Password!";
            }
        }
        catch (Exception ex)
        {
            ltrMessage.Text = ex.Message;
        }
        
    }
}