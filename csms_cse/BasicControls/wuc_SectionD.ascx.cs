using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicControls_wuc_SectionD : System.Web.UI.UserControl
{
    private int currentSRF;

    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connStr))
        {
            using (SqlCommand command = new SqlCommand())
            {
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = "Select COMPANYNAME from COMPANY where CLIENTID = @CLIENTID";
                command.Parameters.AddWithValue("@CLIENTID", Session["CLIENTID"].ToString());

                connection.Open();
                Companynamelbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select REPORTEDDATE from SERVICE where USERID = @Username";
                command.Parameters.AddWithValue("@Username", Session["Username"].ToString());
                Datetimelbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select SERVICENUMBER from SERVICE where USERID = @Username";
                SRFNOlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select TITLE from SERVICE where USERID = @Username";
                Titlelbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select SERVICEDESCRIPTION from SERVICE where USERID = @Username";
                Descriptionlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select USERID from SERVICE where CLIENTID = @CLIENTID";
                Usernamelbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select CONTACT from SERVICE where USERID = @Username";
                Contactlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select PROJECTCODE from SERVICE where USERID = @Username";
                Projectcodelbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select PROJECTCODE from SERVICE where USERID = @Username";
                Projectcodenamelbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select RESPONDEDTIME from SERVICE where USERID = @Username";
                Datetimerespondlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select ENGINEERASSIGNED from SERVICE where USERID = @Username";
                Personassignlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select SERVICESTARTDATE from SERVICE where USERID = @Username";
                Startlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select SERVICEENDDATE from SERVICE where USERID = @Username";
                Endlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select MANDAY from SERVICE where USERID = @Username";
                Mandaylbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select AMOUNT from SERVICE where USERID = @Username";
                Amountlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select CURRENCY from SERVICE where USERID = @Username";
                Currencylbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select PROJECTPHASE from SERVICE where USERID = @Username";
                Projectphaselbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select EVALUATION from SERVICE where USERID = @Username";
                Evaluationlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select KIVDATE from SERVICE where USERID = @Username";
                KIVlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select EVALUATIONCOMMENT from SERVICE where USERID = @Username";
                Commentlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select RATE from SERVICE where USERID = @Username";
                Ratelbl.Text = command.ExecuteScalar().ToString();

                //command.CommandText = "Select Reason from SERVICE where USERID = @Username";
                //Reasonlbl.Text = command.ExecuteScalar().ToString();

                //command.CommandText = "Select OTHEREXPENSES from SERVICE where USERID = @Username";
                //Expenseslbl.Text = command.ExecuteScalar().ToString();
                
                connection.Close();
            }
        }

        {
            if (Session["username"] != null)
                Usernamelbl.Text = Session["Username"].ToString();
            else
                Usernamelbl.Text = "";
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
 {
        string conn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        using (SqlConnection con = new SqlConnection(conn))
        {
            SqlCommand cmd = new SqlCommand("UPDATE SERVICE SET CONFIGUP = @Configup, ACTIONSTAKEN = @Actions, DOCNAME = @Docname, DOCVERSION = @Docversion, DOCDATE = @Docdate, DOCOLD = @Old, DOCNEW = @New, CONFIGUPDATE = @Configupdate WHERE (USERID = @Username)");

            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@Actions", Actions.Text.Trim());
            cmd.Parameters.AddWithValue("@Configupdate", Configrecord.Text.Trim());
            cmd.Parameters.AddWithValue("@Configup", RadioButtonConfig.Text);
            String Docname = Docname1.Text.Trim() + "," + Docname2.Text.Trim() + "," + Docname3.Text.Trim() + "," + Docname4.Text.Trim() + ",";
            cmd.Parameters.AddWithValue("@Docname", Docname);
            String Docold = Old1.Text.Trim() + "," + Old2.Text.Trim() + "," + Old3.Text.Trim() + "," + Old4.Text.Trim() + ",";
            cmd.Parameters.AddWithValue("@Old", Docold);
            String Docnew = New1.Text.Trim() + "," + New2.Text.Trim() + "," + New3.Text.Trim() + "," + New4.Text.Trim() + ",";
            cmd.Parameters.AddWithValue("@New", Docnew);
            String Docdate = Date1.Text.Trim() + "," + Date2.Text.Trim() + "," + Date3.Text.Trim() + "," + Date4.Text.Trim() + ",";
            cmd.Parameters.AddWithValue("@Docdate", Docdate);
            String Docversion = Version1.Text.Trim() + "," + Version2.Text.Trim() + "," + Version3.Text.Trim() + "," + Version4.Text.Trim() + ",";
            cmd.Parameters.AddWithValue("@Docversion", Docversion);
            cmd.Parameters.AddWithValue("@Username", Session["Username"].ToString());

            con.Open();
            

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (SqlException sqle)
            {
                // error here
                String a = sqle.Errors[0].Message.ToString();
            }
        }
    }




    protected void BtnConfirm_Click(object sender, EventArgs e)
    {
        string conn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        using (SqlConnection con = new SqlConnection(conn))
        {
            SqlCommand cmd = new SqlCommand("UPDATE SERVICE SET CONFIGUP = @Configup, dcflag = @Confirm, ACTIONSTAKEN = @Actions, DOCNAME = @Docname, DOCVERSION = @Docversion, DOCDATE = @Docdate, DOCOLD = @Old, DOCNEW = @New, CONFIGUPDATE = @Configupdate WHERE (USERID = @Username)");

            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@Actions", Actions.Text.Trim());
            cmd.Parameters.AddWithValue("@Configupdate", Configrecord.Text.Trim());
            cmd.Parameters.AddWithValue("@Configup", RadioButtonConfig.Text);
            String Docname = Docname1.Text.Trim() + "," + Docname2.Text.Trim() + "," + Docname3.Text.Trim() + "," + Docname4.Text.Trim() + ",";
            cmd.Parameters.AddWithValue("@Docname", Docname);
            String Docold = Old1.Text.Trim() + "," + Old2.Text.Trim() + "," + Old3.Text.Trim() + "," + Old4.Text.Trim() + ",";
            cmd.Parameters.AddWithValue("@Old", Docold);
            String Docnew = New1.Text.Trim() + "," + New2.Text.Trim() + "," + New3.Text.Trim() + "," + New4.Text.Trim() + ",";
            cmd.Parameters.AddWithValue("@New", Docnew);
            String Docdate = Date1.Text.Trim() + "," + Date2.Text.Trim() + "," + Date3.Text.Trim() + "," + Date4.Text.Trim() + ",";
            cmd.Parameters.AddWithValue("@Docdate", Docdate);
            String Docversion = Version1.Text.Trim() + "," + Version2.Text.Trim() + "," + Version3.Text.Trim() + "," + Version4.Text.Trim() + ",";
            cmd.Parameters.AddWithValue("@Docversion", Docversion);
            cmd.Parameters.AddWithValue("@Username", Session["Username"].ToString());
            cmd.Parameters.AddWithValue("@Confirm", 1);

            con.Open();
            

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (SqlException sqle)
            {
                // error here
                String a = sqle.Errors[0].Message.ToString();
            }
        }
    }



    protected void Unconfirm_Click(object sender, EventArgs e)
    {
              string conn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        using (SqlConnection con = new SqlConnection(conn))
        {
            SqlCommand cmd = new SqlCommand("UPDATE SERVICE SET ccflag = @Unconfirm WHERE (USERID = @Username)");

            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;

            
            cmd.Parameters.AddWithValue("@Username", Session["Username"].ToString());
            cmd.Parameters.AddWithValue("@Unconfirm", 0);

            con.Open();
            

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (SqlException sqle)
            {
                // error here
                String a = sqle.Errors[0].Message.ToString();
            }
        }
    }
    }

        
    






