using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicControls_wuc_serviceform : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
 
    protected void Button2_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox54.Text = Calendar1.SelectedDate.ToString("dd MMM, yyyy");

        Calendar1.Visible = false; 
    }
    protected void Calendar3_SelectionChanged(object sender, EventArgs e)
    {
        TextBox10.Text = Calendar3.SelectedDate.ToString("dd MMM, yyyy");

        Calendar3.Visible = false; 
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Calendar4.Visible = true;  
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Calendar3.Visible = true;
    }


    protected void Calendar4_SelectionChanged(object sender, EventArgs e)
    {
        TextBox9.Text = Calendar4.SelectedDate.ToString("dd MMM, yyyy");

        Calendar4.Visible = false; 
    }

    protected void Calendar3_SelectionChanged1(object sender, EventArgs e)
    {
        TextBox10.Text = Calendar3.SelectedDate.ToString("dd MMM, yyyy");

        Calendar3.Visible = false; 
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Calendar5.Visible = true;
    }
    protected void Calendar5_SelectionChanged(object sender, EventArgs e)
    {
        TextBox51.Text = Calendar5.SelectedDate.ToString("dd MMM, yyyy");

        Calendar5.Visible = false;
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        TextBox3.Text = DateTime.Now.ToString("hh:mm:ss tt");

    }
    protected void Calendar6_SelectionChanged(object sender, EventArgs e)
    {
        TextBox15.Text = Calendar6.SelectedDate.ToString("dd MMM, yyyy");
        Calendar6.Visible = false;
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        TextBox7.Text = DateTime.Now.ToString(); 
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        TextBox3.Text = DateTime.Now.ToString();
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Calendar6.Visible = true;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Other")
        {
            TextBox4.Enabled = true;
            TextBox4.Text = string.Empty;
        }

        else

        {
            TextBox4.Enabled = false;
            TextBox4.Text = DropDownList1.SelectedValue;
        }

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}