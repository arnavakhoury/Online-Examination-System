using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddFaculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddFaculty_Click(object sender, EventArgs e)
    {
        try
        {
            FacultyDetail fd = new FacultyDetail();
            double Fee = Convert.ToDouble(txtFee.Text);
            fd.SaveFaculty(txtFacultyID.Text, txtFaculty.Text, ddlDuration.SelectedItem.Text, Fee);
            ltrMessage.Text = "Saved Successfully";
            txtFacultyID.Text = "";
            txtFaculty.Text = "";
            txtFee.Text = "";
            txtFacultyID.Focus();
        }
        catch(Exception){
            ltrMessage.Text = "Course Already Exists";
        }
    }
}