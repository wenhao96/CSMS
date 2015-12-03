using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicControls_login_wuc : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        csmswork CS = new csmswork();
        if (CS.login(UsernameText.Text, Password.Text) == true)
        {
            HttpCookie c = new HttpCookie("login");
            c.Values.Add("user", UsernameText.Text);
            if (chkRem.Checked)
                c.Expires = DateTime.Now.AddYears(5);
            Response.Cookies.Add(c);

            Response.Redirect("Default.aspx");
        }
        else
            lblMsg.Text = "User/Password Incorrect";
    }
}