using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class BasicControls_wuc_usermanagement : System.Web.UI.UserControl
{
    string usersalt;
    string password;
    string HashedPassword;
    string connStr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {


    }
    protected static byte[] CreateSalt(int size)
    {
        RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
        byte[] salt = new byte[size];
        rng.GetBytes(salt);

        return salt;
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
    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        byte[] salt = CreateSalt(5);
        usersalt = Convert.ToBase64String(salt);
        password = ((TextBox)DetailsView1.FindControl("PasswordTB")).Text;
        HashedPassword = Convert.ToBase64String(GenerateSaltedHash(Encoding.UTF8.GetBytes(password), salt));

        connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connStr))
        {
            using (SqlCommand command = new SqlCommand())
            {
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = "INSERT INTO USERPASS(USERID, CLIENTID, SALUTATION, NAME, EMAIL, PHONE, HANDPHONE, SKYPE, POSITION, SITEID, PASSWORD, USERGROUP, COMPANYNAME, USERSALT) VALUES (@USERID, @CLIENTID, @SALUTATION, @NAME, @EMAIL, @PHONE, @HANDPHONE, @SKYPE, @POSITION, @SITEID, @PASSWORD, @USERGROUP, @COMPANYNAME, @USERSALT)";
                command.Parameters.AddWithValue("@USERID", ((TextBox)DetailsView1.FindControl("UserIDTB")).Text);
                command.Parameters.AddWithValue("@CLIENTID", "1");
                command.Parameters.AddWithValue("@SALUTATION", ((DropDownList)DetailsView1.FindControl("SalutationDropDownList")).SelectedValue);
                command.Parameters.AddWithValue("@NAME", ((TextBox)DetailsView1.FindControl("NameTB")).Text);
                command.Parameters.AddWithValue("@EMAIL", ((TextBox)DetailsView1.FindControl("EMailTB")).Text);
                command.Parameters.AddWithValue("@PHONE", ((TextBox)DetailsView1.FindControl("PhoneTB")).Text);
                command.Parameters.AddWithValue("@HANDPHONE", ((TextBox)DetailsView1.FindControl("HPTB")).Text);
                command.Parameters.AddWithValue("@SKYPE", ((TextBox)DetailsView1.FindControl("SkypeTB")).Text);
                command.Parameters.AddWithValue("@POSITION", ((TextBox)DetailsView1.FindControl("PositionTB")).Text);
                command.Parameters.AddWithValue("@SITEID", ((TextBox)DetailsView1.FindControl("SiteIDTB")).Text);
                command.Parameters.AddWithValue("@PASSWORD", HashedPassword);
                command.Parameters.AddWithValue("@USERGROUP", ((DropDownList)DetailsView1.FindControl("UserGroupDropDownList")).SelectedValue);
                command.Parameters.AddWithValue("@COMPANYNAME", ((DropDownList)DetailsView1.FindControl("CompanyNameDropDownList")).SelectedValue);
                command.Parameters.AddWithValue("@USERSALT", usersalt);

                try
                {
                    connection.Open();
                    int recordsAffected = command.ExecuteNonQuery();
                    this.FindControl("UserCreatedLabel").Visible = true;
                }
                catch (SqlException sqle)
                {
                    // error here
                    String a = sqle.Errors[0].Message.ToString();
                }
                finally
                {
                    connection.Close();
                }
            }
        }
    }
    protected void UserIDTB_TextChanged(object sender, EventArgs e)
    {
        connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connStr))
        {
            using (SqlCommand command = new SqlCommand())
            {
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = "Select * from userpass where USERID = @userid";
                command.Parameters.AddWithValue("@USERID", ((TextBox)DetailsView1.FindControl("UserIDTB")).Text);

                try
                {
                    connection.Open();
                    object recordsAffected = command.ExecuteScalar();

                    if (recordsAffected != null)
                    {
                        this.FindControl("UserCreatedLabel").Visible = false;
                        DetailsView1.FindControl("UserIDErrorLabel").Visible = true;
                    }
                    else
                    {
                        this.FindControl("UserCreatedLabel").Visible = false;
                        DetailsView1.FindControl("UserIDErrorLabel").Visible = false;
                    }

                }
                catch (SqlException sqle)
                {
                    // error here
                    String a = sqle.Errors[0].Number.ToString();
                }
                finally
                {
                    connection.Close();
                }
            }
        }
    }
}