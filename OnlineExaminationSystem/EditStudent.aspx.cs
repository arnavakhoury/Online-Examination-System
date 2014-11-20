using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;
public partial class EditManageStudent : System.Web.UI.Page
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
   
    protected void btnSearchById_Click(object sender, EventArgs e)
    {
        try
        {
            UserDetail ud = new UserDetail();
            DataTable dt = ud.SearchStudentByID(txtStudentID.Text);
            txtStudentName.Text = dt.Rows[0]["Name"].ToString();
            txtRollNumber.Text = dt.Rows[0]["RollNumber"].ToString().Trim();
            txtUsername.Text = dt.Rows[0]["Username"].ToString();
            ddlFaculty.Text = dt.Rows[0]["Faculty"].ToString();
            ddlSemester.Text = dt.Rows[0]["Semester"].ToString();
            txtEmail.Text = dt.Rows[0]["Email"].ToString();
            lblMessage.ForeColor = System.Drawing.Color.Black;
            lblMessage.Text = "";
        }
        catch (Exception)
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Invalid Student ID";
            txtStudentName.Text = "";
            txtRollNumber.Text = "";
            txtUsername.Text = "";
            ddlSemester.Text = "";
            txtEmail.Text = "";
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            UserDetail ud = new UserDetail();
            DataTable dt = ud.SearchStudentByID(txtStudentID.Text);
            if (dt.Rows.Count < 1)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Invalid Student ID";
                lblMessage.Text = "Invalid Student ID";
            }
          
            else {
                ud.UpdateStudent(txtStudentName.Text, txtRollNumber.Text, txtUsername.Text, ddlFaculty.SelectedItem.Value, ddlSemester.SelectedItem.Value, txtEmail.Text, txtStudentID.Text);
                lblMessage.ForeColor = System.Drawing.Color.Black;
                lblMessage.Text = "Successfully Updated!";
                txtStudentID.Text = "";
                txtStudentName.Text = "";
                txtRollNumber.Text = "";
                txtUsername.Text = "";
                txtEmail.Text = "";
                txtStudentID.Focus();
            }
            
        }
        catch(Exception){
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Record Cannot be Updated";
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            UserDetail ud = new UserDetail();
            ud.DeleteStudent(txtStudentID.Text);
            lblMessage.Text = "Successfully Deleted!";
            txtStudentID.Text = "";
            txtStudentName.Text = "";
            txtRollNumber.Text = "";
            txtUsername.Text = "";
            txtEmail.Text = "";
            txtStudentID.Focus();
        }
        catch (Exception)
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Record Cannot be Deleted";
        }
    }


    protected void btnChangePicture_Click(object sender, EventArgs e)
    {
        try
        {
            UserDetail ud = new UserDetail();
            ud.UpdatePicture("Student/" + FileUpload1.FileName, txtStudentID.Text);
            FileUpload1.SaveAs(Server.MapPath("~/Student/" + FileUpload1.FileName));
            lblMessage.ForeColor = System.Drawing.Color.Black;
            lblMessage.Text = "Successfully Updated!";
            txtStudentID.Text = "";
            txtStudentName.Text = "";
            txtRollNumber.Text = "";
            txtUsername.Text = "";
            txtEmail.Text = "";
            txtStudentID.Focus();
        }
        catch(Exception) {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Cannot Update Picture";

        }
        
    }
}