using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
public partial class ManageStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            GridView1.DataSource = StudentInformation.GetAllStudents();
            GridView1.DataBind();
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AddStudent.aspx");
    }
}