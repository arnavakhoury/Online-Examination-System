using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["Member"] != null)
            {
                lblWelcome.Text += Session["Member"].ToString();
            }
            else
            {
                Response.Redirect("admin.aspx");
            }
        }
    }
}
