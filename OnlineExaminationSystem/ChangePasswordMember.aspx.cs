using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangePasswordMember : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (ChangeMemberPassword())
        {
            lblMessage.ForeColor = System.Drawing.Color.Black;
            lblMessage.Text = "Password Changed Successfully!";
            txtCurrentPassword.Text = "";
            txtNewPassword.Text = "";
            txtConfirmNewPassword.Text = "";
            txtCurrentPassword.Focus();
        }
        else
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Invalid Current Password";
            txtCurrentPassword.Text = "";
            txtNewPassword.Text = "";
            txtConfirmNewPassword.Text = "";
            txtCurrentPassword.Focus();
        }
    }

    private bool ChangeMemberPassword()
    {
        List<SqlParameter> paramList = new List<SqlParameter>(){
          new SqlParameter(){
              ParameterName="@Username",
              Value=Session["Member"].ToString()
              //Value=User.Identity.Name
          },
          new SqlParameter(){
              ParameterName="@CurrentPassword",
              //Value=txtCurrentPassword.Text
              Value=FormsAuthentication.HashPasswordForStoringInConfigFile(txtCurrentPassword.Text,"SHA1")
          },
          new SqlParameter(){
              ParameterName="@NewPassword",
              //Value=txtNewPassword.Text
              Value=FormsAuthentication.HashPasswordForStoringInConfigFile(txtNewPassword.Text,"SHA1")
          }
        };
        return ExecuteSP("spChangePasswordMember", paramList);
    }

    private bool ExecuteSP(String SPName, List<SqlParameter> SPParameters)
    {
        string CS = ConfigurationManager.ConnectionStrings["OnlineExamConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand(SPName, con);
            cmd.CommandType = CommandType.StoredProcedure;

            foreach (SqlParameter parameter in SPParameters)
            {
                cmd.Parameters.Add(parameter);
            }
            con.Open();
            return Convert.ToBoolean(cmd.ExecuteScalar());
        }
    }
}