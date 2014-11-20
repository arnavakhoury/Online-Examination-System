using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Collections;

public partial class Questions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        questionDetails.DataBind();
        GlobalConnection gc = new GlobalConnection();
            SqlCommand cmd = new SqlCommand("SELECT Subject FROM Exam WHERE ExamID='" + Session["ExamID"].ToString() + "'", gc.cnn);

            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lblCurrentTest.Text = dr["Subject"].ToString();
            }
        }

    protected void nextButton_Click(object sender, EventArgs e)
    {
        
        System.Data.DataRowView dr = (System.Data.DataRowView)questionDetails.DataItem;

        
        Answer a = new Answer();
        a.QuestionID = dr["QuestionOrder"].ToString();
        a.CorrectAnswer = dr["CorrectAnswer"].ToString();
        a.UserAnswer = ddlAnswer.SelectedValue.ToString();

        ArrayList al = (ArrayList)Session["AnswerList"];
        al.Add(a);

        Session.Add("AnswerList", al);

        if (questionDetails.PageIndex == questionDetails.PageCount - 1)
        {
            
            Response.Redirect("Results.aspx");
        }
        else
        {
            questionDetails.PageIndex++;
        }

        if (questionDetails.PageIndex == questionDetails.PageCount - 1)
        {
            btnNext.Text = "Finished";
        }

    }
}