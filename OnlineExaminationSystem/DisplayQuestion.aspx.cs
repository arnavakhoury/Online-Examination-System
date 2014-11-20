using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FacultyDetail fd = new FacultyDetail();
            DataTable dt = fd.BindExamID();
            ddlExamID.DataSource = dt;
            ddlExamID.DataTextField = "ExamID";
            ddlExamID.DataBind();
        } 
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AddQuestions.aspx");
    }
}