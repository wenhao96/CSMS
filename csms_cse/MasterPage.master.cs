using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ClientID"] != null)
            lblUser.Text = "Welcome Back : " + Request.Cookies["login"]["user"].ToString() + " " + Session["ClientID"];
        else
            lblUser.Text = "";

    }
}
