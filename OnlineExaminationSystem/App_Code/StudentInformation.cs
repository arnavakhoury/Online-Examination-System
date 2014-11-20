using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

public class Student
{
    public int StudentID { get; set; }
    public string Name { get; set; }
    public string RollNumber { get; set; }
    //public int RollNumber { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
    public string Faculty { get; set; }
    public string Semester { get; set; }
    public string Email { get; set; }
    public string Photo { get; set; }
}

public class StudentInformation
{
    public static List<Student> GetAllStudents()
    {
        List<Student> listStudents = new List<Student>();
        GlobalConnection gc = new GlobalConnection();
        SqlCommand cmd = new SqlCommand("SELECT * FROM Student", gc.cnn);
        SqlDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            Student student = new Student();
            student.StudentID = Convert.ToInt32(rdr["StudentID"]);
            student.Name = rdr["Name"].ToString();
            student.RollNumber = rdr["RollNumber"].ToString();
            //student.RollNumber = Convert.ToInt32(rdr["RollNumber"]);
            student.Username = rdr["Username"].ToString();
            student.Password = rdr["Password"].ToString();
            student.Faculty = rdr["Faculty"].ToString();
            student.Semester = rdr["Semester"].ToString();
            student.Email = rdr["Email"].ToString();
            student.Photo = rdr["Photo"].ToString();

            listStudents.Add(student);
        }
        return listStudents;
    }


}