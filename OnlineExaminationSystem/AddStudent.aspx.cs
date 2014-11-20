using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Web.Security;

public partial class AddStudent : System.Web.UI.Page
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
    protected void btnCreateStudent_Click(object sender, EventArgs e)
    {
        try
        {
            UserDetail ud = new UserDetail();
            string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtRollNumber.Text, "SHA1");
            ud.AddStudent(txtStudentID.Text, txtStudentName.Text, txtRollNumber.Text, txtRollNumber.Text, hashedPassword, ddlFaculty.SelectedItem.Value, ddlSemester.SelectedItem.Value, txtEmail.Text, "Student/" + FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Student/" + FileUpload1.FileName));
            ltrMessage.Text = "Saved Successfully!";
            txtStudentID.Text = "";
            txtStudentName.Text = "";
            txtRollNumber.Text = "";
            txtEmail.Text = "";
            txtStudentID.Focus();
        }
        catch(Exception){
            ltrMessage.Text = "Student Already Exists";
        }
    }
}