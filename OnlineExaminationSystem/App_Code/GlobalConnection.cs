using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Configuration;

public class GlobalConnection
{
    public SqlConnection cnn;

	public GlobalConnection()
	{
        string stringConnection = ConfigurationManager.ConnectionStrings["OnlineExamConnectionString"].ConnectionString;
        cnn = new SqlConnection(stringConnection);
        cnn.Open();
	}
}