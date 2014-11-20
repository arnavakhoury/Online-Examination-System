using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class AddSubject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FacultyDetail fd = new FacultyDetail();
            DataTable dt = fd.BindFaculty();
            ddlFaculty.DataSource = dt;
            ddlFaculty.DataTextField = "Faculty";
            ddlFaculty.DataBind();
        } 
    }
    protected void btnAddSubject_Click(object sender, EventArgs e)
    {
        try
        {
            FacultyDetail fd = new FacultyDetail();
            fd.SaveSubject(txtSubjectID.Text,txtSubject.Text,ddlFaculty.SelectedItem.Text,ddlSemester.SelectedItem.Text,txtDescription.Text);
            ltrMessage.Text = "Saved Successfully!";
            txtSubjectID.Text = "";
            txtSubject.Text = "";
            txtDescription.Text = "";
            txtSubjectID.Focus();
        }
        catch(Exception){
            ltrMessage.Text = "Subject Already Exists!";
        }
    }
    protected void ddlFaculty_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}