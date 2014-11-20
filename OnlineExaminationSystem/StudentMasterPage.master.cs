using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["Student"] != null)
            {
                lblWelcome.Text += Session["Student"].ToString();
            }
            else
            {
                Response.Redirect("Student.aspx");
            }
        }
        
        
    }
}
