using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class MyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            GlobalConnection gc = new GlobalConnection();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Student WHERE Username='" + Session["Student"].ToString() + "'", gc.cnn);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        catch(Exception){
            Response.Redirect("Student.aspx");
        }
    }
}