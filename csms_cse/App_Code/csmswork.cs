using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for csmswork
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class csmswork : WebService {
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

    public csmswork () {
        // code constractor
    }

    private void SetComnd(string stmt)
    {
        
        con.ConnectionString = "Data Source=drj-pi1;Persist Security Info=True;User ID=csms;Password=password";
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = stmt;
    }
    private void Disconnect()
    {
        con.Close();

    }
    public int RuninsDelUpd(string stmt)
    {
       
        SetComnd(stmt);
        int rows = cmd.ExecuteNonQuery();
        Disconnect();
        return rows;
    }
    public DataTable RunQuery(string select)
    {
        SetComnd(select);
        DataTable tbl = new DataTable();
        tbl.Load(cmd.ExecuteReader());
        Disconnect();
        return tbl;
    }

    public bool login(string user, string pass)
    {
        string sql = "select * from USERPASS where userid = '" + user + "' and password ='"  + pass + "'";
        DataTable tbl=RunQuery(sql);
        if (tbl.Rows.Count > 0)
            return true;
        else
            return false;

    }
}
    

 