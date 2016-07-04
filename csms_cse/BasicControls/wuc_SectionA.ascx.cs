using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicControls_wuc_SectionA : System.Web.UI.UserControl
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

                //command.CommandText = "Select * from SERVICE where PROJECTCODE = @PROJECTCODE";
                //command.Parameters.AddWithValue("@PROJECTCODE", ProjectcodeDDL.SelectedItem.Text);

                //SRFNOlbl.Text = ProjectcodeDDL.SelectedItem.Text + "-SRF-" + command.ExecuteNonQuery();
                ProjectcodeDDL.SelectedIndex = 0;

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
            SqlCommand cmd = new SqlCommand("Insert into SERVICE(CONTACT,CLIENTID,USERID,PROJECTCODE,REPORTEDDATE,TITLE,SERVICEDESCRIPTION,SERVICENUMBER) values(@Contact,@CLIENTID,@Username,@Projectcode,@Datetime,@Title,@Description,@ServiceNumber)", con);

            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@CLIENTID", Convert.ToInt32(Session["CLIENTID"]));
            cmd.Parameters.AddWithValue("@Username", Usernamelbl.Text.Trim());
            cmd.Parameters.AddWithValue("@Projectcode", ProjectcodeDDL.SelectedItem.Text.Trim());
            cmd.Parameters.AddWithValue("@Datetime", Convert.ToDateTime(DatetimeTB.Text.Trim()));
            cmd.Parameters.AddWithValue("@Title", TitleTB.Text.Trim());
            cmd.Parameters.AddWithValue("@Description", DescriptionTB.Text.Trim());
            cmd.Parameters.AddWithValue("@ServiceNumber", currentSRF);
            cmd.Parameters.AddWithValue("@Contact", ContactTB.Text.Trim());
            con.Open();
            cmd.ExecuteNonQuery();

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

    protected void ProjectcodeDDL_PreRender(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connStr))
        {
            using (SqlCommand command = new SqlCommand())
            {
                command.Connection = connection;
                command.CommandType = CommandType.Text;

                command.CommandText = "Select count(*) from SERVICE where PROJECTCODE = @PROJECTCODE";
                command.Parameters.AddWithValue("@PROJECTCODE", ProjectcodeDDL.SelectedItem.Text);

                connection.Open();

                currentSRF = (int)command.ExecuteScalar();
                connection.Close();

                currentSRF = currentSRF + 1;
                SRFNOlbl.Text = ProjectcodeDDL.SelectedItem.Text + "-SRF-" + currentSRF;


            }
        }
    }
    protected void ProjectcodeDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connStr))
        {
            using (SqlCommand command = new SqlCommand())
            {
                command.Connection = connection;
                command.CommandType = CommandType.Text;

                command.CommandText = "Select * from SERVICE where PROJECTCODE = @PROJECTCODE";
                command.Parameters.AddWithValue("@PROJECTCODE", ProjectcodeDDL.SelectedItem.Text);

                connection.Open();
                SRFNOlbl.Text = ProjectcodeDDL.SelectedItem.Text + "-SRF-" + command.ExecuteNonQuery();

                connection.Close();
            }
        }
    }

    protected void BtnConfirm_Click(object sender, EventArgs e)
    {
        string conn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        using (SqlConnection con = new SqlConnection(conn))
        {
            SqlCommand cmd = new SqlCommand("UPDATE SERVICE SET CONTACT = @Contact, acflag = @Confirm, CLIENTID = @CLIENTID, USERID = @Username, PROJECTCODE = @Projectcode, REPORTEDDATE = @Datetime, TITLE = @Title, SERVICEDESCRIPTION = @Description, SERVICENUMBER = @ServiceNumber WHERE (USERID = @Username)");

            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@CLIENTID", Convert.ToInt32(Session["CLIENTID"]));
            cmd.Parameters.AddWithValue("@Username", Usernamelbl.Text.Trim());
            cmd.Parameters.AddWithValue("@Projectcode", ProjectcodeDDL.SelectedItem.Text.Trim());
            cmd.Parameters.AddWithValue("@Datetime", Convert.ToDateTime(DatetimeTB.Text.Trim()));
            cmd.Parameters.AddWithValue("@Title", TitleTB.Text.Trim());
            cmd.Parameters.AddWithValue("@Description", DescriptionTB.Text.Trim());
            cmd.Parameters.AddWithValue("@ServiceNumber", currentSRF);
            cmd.Parameters.AddWithValue("@Contact", ContactTB.Text.Trim());
            cmd.Parameters.AddWithValue("@Confirm", 1);

            con.Open();
            cmd.ExecuteNonQuery();

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