using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;

public class UserDetail
{
    GlobalConnection gc = new GlobalConnection();

    public void SaveMember(string ID, string Username, string Password)
    {
        string strData = "INSERT INTO Member (MemberID,Username,Password) VALUES (@ID,@Username,@Password)";
        SqlCommand cmd = new SqlCommand(strData, gc.cnn);
        cmd.Parameters.AddWithValue("ID", ID);
        cmd.Parameters.AddWithValue("Username", Username);
        cmd.Parameters.AddWithValue("Password", Password);
        cmd.ExecuteNonQuery();
    }

    public DataTable CheckMember(string UID, string PWD)
    {
        string strData = "Select * From Member Where Username='" + UID + "' And Password='" + PWD + "'";
        SqlDataAdapter da = new SqlDataAdapter(strData, gc.cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Member");
        return ds.Tables[0];
    }

    public void AddStudent(string ID, string Name, string Roll, string Username, string Password, string Faculty, string Semester, string Email, string Photo)
    {
        string strData = "INSERT INTO Student (StudentID,Name,RollNumber,Username,Password,Faculty,Semester,Email,Photo) VALUES(@ID,@Name,@Roll,@Username,@Password,@Faculty,@Semester,@Email,@Photo)";
        SqlCommand cmd = new SqlCommand(strData,gc.cnn);
        cmd.Parameters.AddWithValue("ID",ID);
        cmd.Parameters.AddWithValue("Name",Name);
        cmd.Parameters.AddWithValue("Roll",Roll);
        cmd.Parameters.AddWithValue("Username",Username);
        cmd.Parameters.AddWithValue("Password",Password);
        cmd.Parameters.AddWithValue("Faculty",Faculty);
        cmd.Parameters.AddWithValue("Semester", Semester);
        cmd.Parameters.AddWithValue("Email",Email);
        cmd.Parameters.AddWithValue("Photo", Photo);
        cmd.ExecuteNonQuery();
    }

    public void UpdateStudent(string Name, string Roll, string Username,string Faculty, string Semester, string Email, string StudentID)
    {
        string strData = "UPDATE Student SET Name=@Name,RollNumber=@Roll,Username=@Username,Faculty=@Faculty,Semester=@Semester,Email=@Email WHERE StudentID=@StudentID";
        SqlCommand cmd = new SqlCommand(strData, gc.cnn);
        cmd.Parameters.AddWithValue("Name", Name);
        cmd.Parameters.AddWithValue("Roll", Roll);
        cmd.Parameters.AddWithValue("Username", Username);
        cmd.Parameters.AddWithValue("Faculty", Faculty);
        cmd.Parameters.AddWithValue("Semester", Semester);
        cmd.Parameters.AddWithValue("Email", Email);
        cmd.Parameters.AddWithValue("StudentID", StudentID);
        cmd.ExecuteNonQuery();
    }

    public void UpdatePicture(string Photo, string StudentID)
    {
        string strData = "UPDATE Student SET Photo=@Photo WHERE StudentID=@StudentID";
        SqlCommand cmd = new SqlCommand(strData, gc.cnn);
        cmd.Parameters.AddWithValue("Photo", Photo);
        cmd.Parameters.AddWithValue("StudentID", StudentID);
        cmd.ExecuteNonQuery();
    }

    public void DeleteStudent(string StudentID)
    {
        string strData = "DELETE FROM Student WHERE StudentID=@StudentID";
        SqlCommand cmd = new SqlCommand(strData, gc.cnn);
        cmd.Parameters.AddWithValue("StudentID", StudentID);
        cmd.ExecuteNonQuery();
    }

    public void UpdateProfile(string Username, string Email, string StudentID)
    {
        string strData = "UPDATE Student SET Username=@Username,Email=@Email WHERE StudentID=@StudentID";
        SqlCommand cmd = new SqlCommand(strData, gc.cnn);
        cmd.Parameters.AddWithValue("Username", Username);
        cmd.Parameters.AddWithValue("Email", Email);
        cmd.Parameters.AddWithValue("StudentID", StudentID);
        cmd.ExecuteNonQuery();
    }

    public DataTable CheckStudent(string UID, string PWD, string Fac, String Sem)
    {
        string strData = "Select * From Student Where Username='" + UID + "' And Password='" + PWD + "' And Faculty='" + Fac + "' And Semester='" + Sem + "'";
        SqlDataAdapter da = new SqlDataAdapter(strData, gc.cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Member");
        return ds.Tables[0];
    }

    public DataTable BindStudent()
    {
        string strData = "SELECT * FROM Student";
        SqlDataAdapter da = new SqlDataAdapter(strData, gc.cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Student");
        return ds.Tables[0];
    }

    public DataTable SearchStudentByID(string SID)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = gc.cnn;
        cmd.CommandText = "sp_SearchStudent";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@SID", SID);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "Student");
        return ds.Tables[0];
        }

    
    public DataTable DisplayStudentBySession(string Session)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = gc.cnn;
        cmd.CommandText = "sp_DisplayStudent";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Session", Session);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "Student");
        return ds.Tables[0];
    }
   
}