using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Exam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //GlobalConnection gc = new GlobalConnection();
        //SqlCommand cmd = new SqlCommand("SELECT * FROM Exam WHERE Faculty='" + Session["Faculty"].ToString() + "' AND Semester='" + Session["Semester"].ToString() + "'", gc.cnn);
        //DataTable dt = new DataTable();
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //da.Fill(dt);
        //DataList1.DataSource = dt;
        //DataList1.DataBind();

        try
        {
            Session.Add("Username", Session["Student"].ToString());
        }
        catch(Exception){
            Response.Redirect("Student.aspx");
        }
    }
}