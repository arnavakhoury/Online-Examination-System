using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;

public class FacultyDetail
{
    GlobalConnection gc = new GlobalConnection();
    public void SaveFaculty(string ID, string Faculty, string Duration, double Fee) {
        string strData = "INSERT INTO Faculty (FacultyID,Faculty,Duration,Fee) VALUES (@ID,@Faculty,@Duration,@Fee)";
        SqlCommand cmd = new SqlCommand(strData,gc.cnn);
        cmd.Parameters.AddWithValue("ID",ID);
        cmd.Parameters.AddWithValue("Faculty", Faculty);
        cmd.Parameters.AddWithValue("Duration", Duration);
        cmd.Parameters.AddWithValue("Fee", Fee);
        cmd.ExecuteNonQuery();
    }

    public DataTable BindFaculty() {
        string strData = "SELECT * FROM Faculty";
        SqlDataAdapter da = new SqlDataAdapter(strData,gc.cnn);
        DataSet ds = new DataSet();
        da.Fill(ds,"Faculty");
        return ds.Tables[0];
    }

    public void SaveSubject(string ID, string Subject, string Faculty,string Semester, string Description) {
        string strData = "INSERT INTO Exam (ExamID,Subject,Faculty,Semester,Description) VALUES (@ID,@Subject,@Faculty,@Semester,@Description)";
        SqlCommand cmd = new SqlCommand(strData, gc.cnn);
        cmd.Parameters.AddWithValue("ID", ID);
        cmd.Parameters.AddWithValue("Subject", Subject);
        cmd.Parameters.AddWithValue("Faculty", Faculty);
        cmd.Parameters.AddWithValue("Semester", Semester);
        cmd.Parameters.AddWithValue("Description", Description);
        cmd.ExecuteNonQuery();
    }

    public void SaveQuestion(string ID, string Title, string Answer1, string Answer2, string Answer3, string Answer4, string CorrectAnswer, string Explanation, string QuestionOrder,string ExamID) {
        string strData = "INSERT INTO Question VALUES (@ID, @Title, @Answer1, @Answer2, @Answer3, @Answer4, @CorrectAnswer, @Explanation, @QuestionOrder, @ExamID)";
        SqlCommand cmd = new SqlCommand(strData,gc.cnn);
        cmd.Parameters.AddWithValue("ID",ID);
        cmd.Parameters.AddWithValue("Title", Title);
        cmd.Parameters.AddWithValue("Answer1", Answer1);
        cmd.Parameters.AddWithValue("Answer2", Answer2);
        cmd.Parameters.AddWithValue("Answer3", Answer3);
        cmd.Parameters.AddWithValue("Answer4", Answer4);
        cmd.Parameters.AddWithValue("CorrectAnswer", CorrectAnswer);
        cmd.Parameters.AddWithValue("Explanation", Explanation);
        cmd.Parameters.AddWithValue("QuestionOrder", QuestionOrder);
        cmd.Parameters.AddWithValue("ExamID", ExamID);
        cmd.ExecuteNonQuery();
    }

    public DataTable BindExamID()
    {
        string strData = "SELECT * FROM Exam";
        SqlDataAdapter da = new SqlDataAdapter(strData, gc.cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "ExamID");
        return ds.Tables[0];
    }
}