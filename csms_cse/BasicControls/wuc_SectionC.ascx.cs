using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicControls_wuc_SectionC : System.Web.UI.UserControl
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
            SqlCommand cmd = new SqlCommand("UPDATE SERVICE SET EVALUATIONCOMMENT = @Comment, EVALUATION = @Evaluation, KIVDATE = @Keepinview WHERE (USERID = @Username)");

            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;

            
            cmd.Parameters.AddWithValue("@Comment", Comment.Text.Trim());
            cmd.Parameters.AddWithValue("@Evaluation", RadioButtonListEva.Text);
            cmd.Parameters.AddWithValue("@Keepinview", KeepInView.Text.Trim());
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



//protected void ProjectcodeDDL_PreRender(object sender, EventArgs e)
//{
      //using (SqlConnection connection = new SqlConnection(connStr))
    //{
      //  using (SqlCommand command = new SqlCommand())
        //{
          //  command.Connection = connection;
//  string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

            //command.CommandType = CommandType.Text;

            //command.CommandText = "Select count(*) from SERVICE where PROJECTCODE = @PROJECTCODE";
            //command.Parameters.AddWithValue("@PROJECTCODE", ProjectcodeDDL.SelectedItem.Text);

            //connection.Open();

            //currentSRF = (int)command.ExecuteScalar();
            //connection.Close();

            //currentSRF = currentSRF + 1;
            //SRFNOlbl.Text = ProjectcodeDDL.SelectedItem.Text + "-SRF-" + currentSRF;


        //}
    //}
//}




    protected void Confirm_Click(object sender, EventArgs e)
    {
        string conn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        using (SqlConnection con = new SqlConnection(conn))
        {
            SqlCommand cmd = new SqlCommand("UPDATE SERVICE SET ccflag = @Confirm, EVALUATIONCOMMENT = @Comment, EVALUATION = @Evaluation, KIVDATE = @Keepinview WHERE (USERID = @Username)");

            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;


            cmd.Parameters.AddWithValue("@Comment", Comment.Text.Trim());
            cmd.Parameters.AddWithValue("@Evaluation", RadioButtonListEva.Text);
            cmd.Parameters.AddWithValue("@Keepinview", KeepInView.Text.Trim());
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

    protected void btnUnconfirm_Click(object sender, EventArgs e)
    {
        string conn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        using (SqlConnection con = new SqlConnection(conn))
        {
            SqlCommand cmd = new SqlCommand("UPDATE SERVICE SET bcflag = @Unconfirm WHERE (USERID = @Username)");

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