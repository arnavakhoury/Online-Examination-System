using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections;

public partial class Exam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ArrayList al = new ArrayList();
        Session.Add("AnswerList", al);

        if (Request.QueryString["testid"] != null)
        {
            int testID = int.Parse(Request.QueryString["testid"]);
            Session.Add("ExamID", testID);
        }
        else
        {
            Response.Redirect("Exam.aspx");
        }
     }
    protected void startButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Questions.aspx");
    }
}