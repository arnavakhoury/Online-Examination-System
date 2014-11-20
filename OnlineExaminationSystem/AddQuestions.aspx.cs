using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class AddQuestions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddQuestion_Click(object sender, EventArgs e)
    {
        FacultyDetail fd = new FacultyDetail();
        try {
            fd.SaveQuestion(txtQuestionID.Text, txtTitle.Text, txtAnswer1.Text,txtAnswer2.Text,txtAnswer3.Text,txtAnswer4.Text,ddlCorrectAnswer.SelectedItem.Text,txtAnswerExplanation.Text,ddlQuestionOrder.SelectedItem.Text,ddlExamID.SelectedItem.Text);
            lblMessage.ForeColor = System.Drawing.Color.Black;
            lblMessage.Text = "Successfully Added!";
            txtQuestionID.Text="";
            txtTitle.Text = "";
            txtAnswer1.Text = "";
            txtAnswer2.Text = "";
            txtAnswer3.Text = "";
            txtAnswer4.Text = "";
            txtAnswerExplanation.Text = "";
            txtQuestionID.Focus();
        }
        catch(Exception){
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Question Already Exists";
        }
    }
}