using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using PdfSharp;
//using PdfSharp.Drawing;
//using PdfSharp.Pdf;
//using PdfSharp.Pdf.IO;
using iTextSharp.text.pdf;
using iTextSharp.text;
using System.IO;



public partial class BasicControls_wuc_SectionE : System.Web.UI.UserControl
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
                char[] delimiterChars = { ',' };
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

                command.CommandText = "Select CONTACT from SERVICE where USERID = @Username";
                Contactlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select PROJECTCODE from SERVICE where USERID = @Username";
                Projectcodelbl.Text = command.ExecuteScalar().ToString();

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

                command.CommandText = "Select ACTIONSTAKEN from SERVICE where USERID = @Username";
                Actionslbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select CONFIGUPDATE from SERVICE where USERID = @Username";
                Configrecordlbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select CONFIGUP from SERVICE where USERID = @Username";
                Configyesnolbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select RATE from SERVICE where USERID = @Username";
                Ratelbl.Text = command.ExecuteScalar().ToString();

                //command.CommandText = "Select REASON from SERVICE where USERID = @Username";
                //Reasonlbl.Text = command.ExecuteScalar().ToString();

                //command.CommandText = "Select OTHEREXPENSES from SERVICE where USERID = @Username";
                //Expenseslbl.Text = command.ExecuteScalar().ToString();

                command.CommandText = "Select DOCVERSION from SERVICE where USERID = @Username";
                string[] DOCVERSION = command.ExecuteScalar().ToString().Split(delimiterChars);
                Version1lbl.Text = DOCVERSION[0];
                Version2lbl.Text = DOCVERSION[1];
                Version3lbl.Text = DOCVERSION[2];
                Version4lbl.Text = DOCVERSION[3];

                command.CommandText = "Select DOCNAME from SERVICE where USERID = @Username";
                string[] DOCNAME = command.ExecuteScalar().ToString().Split(delimiterChars);
                Docname1lbl.Text = DOCNAME[0];
                Docname2lbl.Text = DOCNAME[1];
                Docname3lbl.Text = DOCNAME[2];
                Docname4lbl.Text = DOCNAME[3];

                command.CommandText = "Select DOCDATE from SERVICE where USERID = @Username";
                string[] DOCDATE = command.ExecuteScalar().ToString().Split(delimiterChars);
                Date1lbl.Text = DOCDATE[0];
                Date2lbl.Text = DOCDATE[1];
                Date3lbl.Text = DOCDATE[2];
                Date4lbl.Text = DOCDATE[3];

                command.CommandText = "Select DOCNEW from SERVICE where USERID = @Username";
                string[] DOCNEW = command.ExecuteScalar().ToString().Split(delimiterChars);
                New1lbl.Text = DOCNEW[0];
                New2lbl.Text = DOCNEW[1];
                New3lbl.Text = DOCNEW[2];
                New4lbl.Text = DOCNEW[3];

                command.CommandText = "Select DOCOLD from SERVICE where USERID = @Username";
                string[] DOCOLD = command.ExecuteScalar().ToString().Split(delimiterChars);
                Old1lbl.Text = DOCOLD[0];
                Old2lbl.Text = DOCOLD[1];
                Old3lbl.Text = DOCOLD[2];
                Old4lbl.Text = DOCOLD[3];

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




    protected void btnPrint_Click(object sender, EventArgs e)
    {
        //; PdfSharp.Pdf.PdfDocument pdf = PdfSharp.Pdf.IO.PdfReader.Open(@"C:\Users\wenhao3005/EIS-ServiceRequest.pdf");
        //PdfDocument pdf = new PdfDocument();
        string oldFile = @"C:\Users\wenhao3005/EIS-ServiceRequest.pdf";
        string newFile = @"C:\Users\wenhao3005/Desktopfirstpage.pdf";
        PdfReader reader = new PdfReader(oldFile);
        Rectangle size = reader.GetPageSizeWithRotation(1);
        Document document = new Document(size);

        FileStream fs = new FileStream(newFile, FileMode.Create, FileAccess.Write);
        
        //Page 1
        PdfWriter writer = PdfWriter.GetInstance(document, fs);
        document.Open();
        PdfContentByte cb = writer.DirectContent;
        BaseFont bf = BaseFont.CreateFont(BaseFont.HELVETICA_BOLD, BaseFont.CP1257, BaseFont.NOT_EMBEDDED);
        Font Font = new Font(bf, 7, Font.BOLD, BaseColor.BLACK);
        ColumnText ct = new ColumnText(cb);
        
        cb.BeginText();
        Phrase SRFNOText = new Phrase(SRFNOlbl.Text, Font);
        ct.SetSimpleColumn(SRFNOText, 110, 700, 200, 732, 15, Element.ALIGN_LEFT);
        ct.Go();

        Phrase UsernameText = new Phrase(Usernamelbl.Text, Font);
        ct.SetSimpleColumn(UsernameText, 165, 600, 300, 695, 15, Element.ALIGN_LEFT);
        ct.Go();

        //Phrase CompanyText = new Phrase(Companynamelbl.Text, Font);
        //ct.SetSimpleColumn(CompanyText, 15, Element.ALIGN_LEFT);
        //ct.Go();

        Phrase DescriptionText = new Phrase(Descriptionlbl.Text, Font);
        ct.SetSimpleColumn(DescriptionText, 78, 0, 522, 615, 15, Element.ALIGN_LEFT);
        ct.Go();
        cb.EndText();

        PdfImportedPage page1 = writer.GetImportedPage(reader, 1);
        cb.AddTemplate(page1, 0, 0);

        //page2
        document.NewPage();

        PdfImportedPage page2 = writer.GetImportedPage(reader, 2);
        cb.AddTemplate(page2, 0, 0);

        //page3
        document.NewPage();
        cb.BeginText();
        Phrase ActionsText = new Phrase(Actionslbl.Text, Font);
        ct.SetSimpleColumn(ActionsText, 90, 350, 500, 720, 15, Element.ALIGN_LEFT);
        ct.Go();
        cb.EndText();
        PdfImportedPage page3 = writer.GetImportedPage(reader, 3); 
        cb.AddTemplate(page3, 0, 0);

        //page 4
        document.NewPage();

        PdfImportedPage page4 = writer.GetImportedPage(reader, 4);
        cb.AddTemplate(page4, 0, 0);

        document.Close();
        fs.Close();
        writer.Close();
        reader.Close();
        //PdfSharp.Pdf.PdfPage pdfPage1 = pdf.Pages[0];
        //PdfSharp.Pdf.PdfPage pdfPage2 = pdf.Pages[1];
        //PdfSharp.Pdf.PdfPage pdfPage3 = pdf.Pages[2];
        //PdfSharp.Pdf.PdfPage pdfPage4 = pdf.Pages[3];
        //XGraphics graph1 = XGraphics.FromPdfPage(pdfPage1);
        //XGraphics graph2 = XGraphics.FromPdfPage(pdfPage2);
        //XGraphics graph3 = XGraphics.FromPdfPage(pdfPage3);
        //XGraphics graph4 = XGraphics.FromPdfPage(pdfPage4);
        //XFont font = new XFont("Verdana", 7, XFontStyle.Bold);

        //PDF Page1
        //graph1.DrawString(SRFNOlbl.Text, font, XBrushes.Black, new XRect(117, 117, pdfPage1.Width.Point, pdfPage1.Height.Point), XStringFormats.TopLeft);
        //graph1.DrawString(Usernamelbl.Text, font, XBrushes.Black, new XRect(170, 154, pdfPage1.Width.Point, pdfPage1.Height.Point), XStringFormats.TopLeft);
        //graph1.DrawString(Companynamelbl.Text, font, XBrushes.Black, new XRect(170, 177, pdfPage1.Width.Point, pdfPage1.Height.Point), XStringFormats.TopLeft);
        //graph1.DrawString(Datetimelbl.Text, font, XBrushes.Black, new XRect(139, 201, pdfPage1.Width.Point, pdfPage1.Height.Point), XStringFormats.TopLeft);
        //graph1.DrawString(Descriptionlbl.Text, font, XBrushes.Black, new XRect(78, 230, pdfPage1.Width.Point, pdfPage1.Height.Point), XStringFormats.TopLeft);
        //graph1.DrawString(Contactlbl.Text, font, XBrushes.Black, new XRect(350, 201, pdfPage1.Width.Point, pdfPage1.Height.Point), XStringFormats.TopLeft);

        //PDF Page2
        //graph2.DrawString(Projectcodenamelbl.Text, font, XBrushes.Black, new XRect(173, 117, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString(Datetimerespondlbl.Text, font, XBrushes.Black, new XRect(395, 128, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString("Person assigned : " + Personassignlbl.Text, font, XBrushes.Black, new XRect(78, 180, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString("Estimated Start Date : " + Startlbl.Text, font, XBrushes.Black, new XRect(78, 200, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString("Estimated End Date : " + Endlbl.Text, font, XBrushes.Black, new XRect(78, 220, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString("Man-Days :   " + Mandaylbl.Text + "   day(s)", font, XBrushes.Black, new XRect(78, 390, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString("Rate : " + Ratelbl.Text, font, XBrushes.Black, new XRect(78, 410, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString("Amount : " + Amountlbl.Text, font, XBrushes.Black, new XRect(78, 490, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString("Other Expenses : " + Expenseslbl.Text, font, XBrushes.Black, new XRect(78, 430, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString("Reason : " + Reasonlbl.Text, font, XBrushes.Black, new XRect(78, 450, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString("Currency : " + Currencylbl.Text, font, XBrushes.Black, new XRect(78, 470, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString(Commentlbl.Text, font, XBrushes.Black, new XRect(78, 577, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString(Usernamelbl.Text, font, XBrushes.Black, new XRect(78, 736, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //graph2.DrawString(KIVlbl.Text, font, XBrushes.Black, new XRect(458, 546, pdfPage2.Width.Point, pdfPage2.Height.Point), XStringFormats.TopLeft);
        //XPen pen = new XPen(XColors.Black, Math.PI);
        ////Project phase
        //if (Projectphaselbl.Text.Equals("Warranty")) { graph2.DrawRectangle(pen, XBrushes.Black, 179, 150, 5, 5); }
        //else if (Projectphaselbl.Text.Equals("Maintenance")) { graph2.DrawRectangle(pen, XBrushes.Black, 263, 150, 5, 5); }
        //else { graph2.DrawRectangle(pen, XBrushes.Black, 361, 150, 5, 5); }
        ////Evaluation
        //if (Evaluationlbl.Text.Equals("Accepted")) { graph2.DrawRectangle(pen, XBrushes.Black, 80, 548, 5, 5); }
        //else if (Evaluationlbl.Text.Equals("Withdrawn")) { graph2.DrawRectangle(pen, XBrushes.Black, 232, 548, 5, 5); }
        //else { graph2.DrawRectangle(pen, XBrushes.Black, 384, 548, 5, 5); }

        ////PDF Page3
        //graph3.DrawString(Actionslbl.Text, font, XBrushes.Black, new XRect(78, 127, pdfPage3.Width.Point, pdfPage3.Height.Point), XStringFormats.TopLeft);

        ////PDF Page4
        ////Document name label
        //graph4.DrawString(Docname1lbl.Text, font, XBrushes.Black, new XRect(78, 130, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(Docname2lbl.Text, font, XBrushes.Black, new XRect(78, 162, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(Docname3lbl.Text, font, XBrushes.Black, new XRect(78, 194, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(Docname4lbl.Text, font, XBrushes.Black, new XRect(78, 225, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);

        ////Version label
        ////graph4.DrawString(Version1lbl.Text, font, XBrushes.Black, new XRect(245, 130, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        ////graph4.DrawString(Version2lbl.Text, font, XBrushes.Black, new XRect(245, 162, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        ////graph4.DrawString(Version3lbl.Text, font, XBrushes.Black, new XRect(245, 194, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        ////graph4.DrawString(Version4lbl.Text, font, XBrushes.Black, new XRect(245, 225, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(Version1lbl.Text + "    " + Date1lbl.Text, font, XBrushes.Black, new XRect(245, 130, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(Version2lbl.Text + "    " + Date2lbl.Text, font, XBrushes.Black, new XRect(245, 162, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(Version3lbl.Text + "    " + Date3lbl.Text, font, XBrushes.Black, new XRect(245, 194, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(Version4lbl.Text + "    " + Date4lbl.Text, font, XBrushes.Black, new XRect(245, 225, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);


        ////Date label
        ////graph4.DrawString(Date1lbl.Text, font, XBrushes.Black, new XRect(325, 130, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        ////graph4.DrawString(Date2lbl.Text, font, XBrushes.Black, new XRect(325, 162, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        ////graph4.DrawString(Date3lbl.Text, font, XBrushes.Black, new XRect(325, 194, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        ////graph4.DrawString(Date4lbl.Text, font, XBrushes.Black, new XRect(325, 225, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);

        ////Old label
        //graph4.DrawString(Old1lbl.Text, font, XBrushes.Black, new XRect(424, 130, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(Old2lbl.Text, font, XBrushes.Black, new XRect(424, 162, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(Old3lbl.Text, font, XBrushes.Black, new XRect(424, 194, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(Old4lbl.Text, font, XBrushes.Black, new XRect(424, 225, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);

        ////New label
        //graph4.DrawString(New1lbl.Text, font, XBrushes.Black, new XRect(473, 130, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(New2lbl.Text, font, XBrushes.Black, new XRect(473, 162, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(New3lbl.Text, font, XBrushes.Black, new XRect(473, 194, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(New4lbl.Text, font, XBrushes.Black, new XRect(473, 225, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);

        //graph4.DrawString(Configrecordlbl.Text, font, XBrushes.Black, new XRect(261, 289, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(Personassignlbl.Text, font, XBrushes.Black, new XRect(78, 375, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);
        //graph4.DrawString(Usernamelbl.Text, font, XBrushes.Black, new XRect(78, 490, pdfPage4.Width.Point, pdfPage4.Height.Point), XStringFormats.TopLeft);

        ////Config record update Y/N
        //if (Configyesnolbl.Text.Equals("Y")) { graph4.DrawRectangle(pen, XBrushes.Black, 197, 293, 1, 1); }
        //else { graph4.DrawRectangle(pen, XBrushes.Black, 218, 293, 1, 1); }

        //string pdfFilename = @"C:\Users\wenhao3005\Desktopfirstpage.pdf";
        //pdf.Save(pdfFilename);

    }



    protected void Unconfirm_Click(object sender, EventArgs e)
    {
        string conn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        using (SqlConnection con = new SqlConnection(conn))
        {
            SqlCommand cmd = new SqlCommand("UPDATE SERVICE SET dcflag = @Unconfirm WHERE (USERID = @Username)");

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

