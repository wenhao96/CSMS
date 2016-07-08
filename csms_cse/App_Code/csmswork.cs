using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for csmswork
/// </summary>
[WebService(Namespace = "http://csms.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class csmswork : WebService {
    private SqlConnection con = new SqlConnection();
    private SqlCommand cmd = new SqlCommand();

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
    private DataTable RunUserIDQuery(string select, string username)
    {
        SetComnd(select);
        cmd.Parameters.AddWithValue("@USERID", username);
        DataTable tbl = new DataTable();
        tbl.Load(cmd.ExecuteReader());
        Disconnect();
        return tbl;
    }

    private string RunSaltAndPWQuery(string select)
    {
        SetComnd(select);
        string str = cmd.ExecuteScalar().ToString();
        Disconnect();
        return str;
    }

    private string RunClientIDQuery(string select)
    {
        SetComnd(select);
        string str = cmd.ExecuteScalar().ToString();
        Disconnect();
        return str;
    }

    public bool login(string user, string pass)
    {
        string sql = "select * from [USERPASS] where ([userid] = @userid)"; 
        DataTable tbl=RunUserIDQuery(sql,user.Trim());

        if (tbl.Rows.Count > 0)
        {
            string saltquery = "select usersalt from [USERPASS] where ([userid] = @userid)";
            byte[] usersalt = Convert.FromBase64String(RunSaltAndPWQuery(saltquery));
            byte[] password = Encoding.UTF8.GetBytes(pass.Trim());
            string keyedPassword = Convert.ToBase64String(GenerateSaltedHash(password,usersalt));

            string passwordquery = "select password from [USERPASS] where ([userid] = @userid)";
            string retrievedPW = RunSaltAndPWQuery(passwordquery);

            string clientIDquery = "select clientID from [USERPASS] where ([userid] = @userid)";
            string retrievedClientID = RunClientIDQuery(clientIDquery);

            if (keyedPassword.Equals(retrievedPW))
            {
                Session["Username"] = user.Trim();
                Session["ClientID"] = retrievedClientID.Trim();
                //Session.Timeout = 20; 
                return true;
            }
            else
                return false;
        }
        else
        {
            return false;
        }

    }

    protected static byte[] GenerateSaltedHash(byte[] plainText, byte[] salt)
    {
        HashAlgorithm algorithm = new SHA256Managed();

        byte[] plainTextWithSaltBytes =
          new byte[plainText.Length + salt.Length];

        for (int i = 0; i < plainText.Length; i++)
        {
            plainTextWithSaltBytes[i] = plainText[i];
        }
        for (int i = 0; i < salt.Length; i++)
        {
            plainTextWithSaltBytes[plainText.Length + i] = salt[i];
        }

        return algorithm.ComputeHash(plainTextWithSaltBytes);
    }
}
    

 