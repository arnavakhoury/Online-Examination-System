using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections;
using System.Data.SqlClient;
using System.Configuration;

public partial class Results : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ArrayList al = (ArrayList)Session["AnswerList"];

        if (al == null)
        {
            Response.Redirect("Exam.aspx");
        }

        resultGrid.DataSource = al;
        resultGrid.DataBind();

        // Save the results into the database.
        try {
            if (IsPostBack == false)
            {

                double questions = al.Count;
                double correct = 0.0;


                for (int i = 0; i < al.Count; i++)
                {
                    Answer a = (Answer)al[i];
                    if (a.Result == Answer.ResultValue.Correct)
                        correct++;
                }

                double score = (correct / questions) * 100;

                SqlDataSource userExamDataSource = new SqlDataSource();
                userExamDataSource.ConnectionString = ConfigurationManager.ConnectionStrings["OnlineExamConnectionString"].ToString();
                userExamDataSource.InsertCommand = "INSERT INTO [StudentExam] ([ExamID], [DateTimeComplete], [Score], [Username]) VALUES (@ExamID, @DateTimeComplete, @Score, @Username)";

                userExamDataSource.InsertParameters.Add("ExamID", Session["ExamID"].ToString());
                userExamDataSource.InsertParameters.Add("DateTimeComplete", DateTime.Now.ToString());
                userExamDataSource.InsertParameters.Add("Score", score.ToString());
                userExamDataSource.InsertParameters.Add("Username", Session["Student"].ToString());

                int rowsAffected = userExamDataSource.Insert();
            }
        }
        catch(Exception){
                errorLabel.Text ="There was a problem saving your quiz results into our database.  Therefore, the results from this quiz will not be displayed on the list on the main menu.";
        }
    }
    protected void resultGrid_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataSource1.FilterExpression = "QuestionOrder=" + resultGrid.SelectedValue;
    }
}