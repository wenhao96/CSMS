using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class BasicControls_wuc_SectionB : System.Web.UI.UserControl
{
    //private int ClientID;
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
            SqlCommand cmd = new SqlCommand("UPDATE SERVICE SET PROJECTCODE = @Projectcode, AMOUNT = @Amount, RATE = @Rate, RESPONDEDTIME = @Datetime, PROJECTPHASE = @Projectphase, ENGINEERASSIGNED = @Personassign, SERVICESTARTDATE = @Start, SERVICEENDDATE = @End, MANDAY = @Manday, CURRENCY = @Currency WHERE (USERID = @Username)");

            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@Projectcode", Projectcodename.Text.Trim());
            cmd.Parameters.AddWithValue("@Datetime", Convert.ToDateTime(Datetimerespond.Text.Trim()));
            cmd.Parameters.AddWithValue("@Projectphase", RadioButtonListPP.Text);
            cmd.Parameters.AddWithValue("@Personassign", PersonassignDDL.SelectedItem.Text.Trim());
            //cmd.Parameters.AddWithValue("@Expenses", Expenses.Text.Trim());
            //cmd.Parameters.AddWithValue("@Reason", Reason.Text.Trim());
            cmd.Parameters.AddWithValue("@Rate", Rate.Text.Trim());
            //cmd.Parameters.AddWithValue("@Amount", (Convert.ToDouble (Rate.Text.Trim())) * (Convert.ToDouble (Manday.Text.Trim())) + (Convert.ToDouble (Expenses.Text.Trim())));
            cmd.Parameters.AddWithValue("@Amount", (Convert.ToDouble(Rate.Text.Trim())) * (Convert.ToDouble(Manday.Text.Trim())));
            cmd.Parameters.AddWithValue("@Start", Startdate.Text.Trim());
            cmd.Parameters.AddWithValue("@End", Enddate.Text.Trim());
            cmd.Parameters.AddWithValue("@Manday", Manday.Text.Trim());
            cmd.Parameters.AddWithValue("@Currency", Currency.SelectedItem.Text.Trim());
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



            //try
            //{
            //    con.Open();
            //    int recordsAffected = cmd.ExecuteNonQuery();
            //    this.FindControl("UserCreatedLabel").Visible = true;
            //}
            //catch (SqlException sqle)
            //{
            //    // error here
            //    String a = sqle.Errors[0].Message.ToString();
            //}
        }
    }






    protected void BtnConfirm_Click(object sender, EventArgs e)
    {
        string conn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        using (SqlConnection con = new SqlConnection(conn))
        {
            SqlCommand cmd = new SqlCommand("UPDATE SERVICE SET bcflag = @Confirm, AMOUNT = @Amount, PROJECTCODE = @Projectcode, RATE = @Rate, RESPONDEDTIME = @Datetime, PROJECTPHASE = @Projectphase, ENGINEERASSIGNED = @Personassign, SERVICESTARTDATE = @Start, SERVICEENDDATE = @End, MANDAY = @Manday, CURRENCY = @Currency WHERE (USERID = @Username)");

            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@Projectcode", Projectcodename.Text.Trim());
            cmd.Parameters.AddWithValue("@Datetime", Convert.ToDateTime(Datetimerespond.Text.Trim()));
            cmd.Parameters.AddWithValue("@Projectphase", RadioButtonListPP.Text);
            //cmd.Parameters.AddWithValue("@Expenses", Expenses.Text.Trim());
            //cmd.Parameters.AddWithValue("@Reason", Reason.Text.Trim());
            //cmd.Parameters.AddWithValue("@Amount", (Convert.ToDouble (Rate.Text.Trim())) * (Convert.ToDouble (Manday.Text.Trim())) + (Convert.ToDouble (Expenses.Text.Trim())));
            cmd.Parameters.AddWithValue("@Personassign", PersonassignDDL.SelectedItem.Text.Trim());
            cmd.Parameters.AddWithValue("@Rate", Rate.Text.Trim());
            cmd.Parameters.AddWithValue("@Start", Startdate.Text.Trim());
            cmd.Parameters.AddWithValue("@End", Enddate.Text.Trim());
            cmd.Parameters.AddWithValue("@Manday", Manday.Text.Trim());
            cmd.Parameters.AddWithValue("@Amount", (Convert.ToDouble(Rate.Text.Trim())) * (Convert.ToDouble(Manday.Text.Trim())));
            cmd.Parameters.AddWithValue("@Currency", Currency.SelectedItem.Text.Trim());
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
            SqlCommand cmd = new SqlCommand("UPDATE SERVICE SET acflag = @Unconfirm  WHERE (USERID = @Username)");

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
    




