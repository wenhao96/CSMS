<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_SectionE.ascx.cs" Inherits="BasicControls_wuc_SectionE" %>
<style type="text/css">



    .auto-style1 {
        width: 100%;
    }
    
    .auto-style25 {
        text-decoration: underline;
        font-size: x-large;
    }
    .auto-style28 {
        height: 53px;
        text-align: left;
    }
    .auto-style6 {
        text-align: left;
        text-decoration: underline;
    }
    .auto-style26 {
        font-size: x-large;
    }
    .auto-style5 {
        text-align: left;
        height: 56px;
    }
    .auto-style15 {
        width: 271px;
        height: 42px;
    }
    .auto-style16 {
        width: 191px;
        height: 42px;
    }
    .auto-style17 {
        width: 166px;
        height: 42px;
    }
    .auto-style18 {
        width: 150px;
        height: 42px;
    }
    .auto-style19 {
        width: 271px;
        height: 32px;
    }
    .auto-style20 {
        width: 191px;
        height: 32px;
    }
    .auto-style21 {
        width: 166px;
        height: 32px;
    }
    .auto-style22 {
        width: 150px;
        height: 32px;
    }
    .auto-style11 {
        width: 271px;
        height: 29px;
    }
    .auto-style12 {
        width: 191px;
        height: 29px;
    }
    .auto-style13 {
        width: 166px;
        height: 29px;
    }
    .auto-style14 {
        width: 150px;
        height: 29px;
    }
    .auto-style24 {
        width: 300px;
        text-align: center;
    }
    </style>
                <body style="text-align: center"></body>
<article>
                <header>
                        Service Form </header>

<style type="text/css">

    .auto-style25 {
        text-decoration: underline;
        font-size: x-large;
    }
    .auto-style1 {
        width: 100%;
    }
    .auto-style29 {
        text-align: left;
    }
    .auto-style30 {
        text-align: left;
        height: 53px;
    }
    .auto-style31 {
        text-align: left;
        height: 44px;
    }
    .auto-style32 {
        font-weight: normal;
        height: 42px;
    }
    .auto-style34 {
        width: 354px;
        text-align: center;
    }
</style>
                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style25" style="text-align: left"></td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style25" style="text-align: left"><strong>Section A : Service Request</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Requested By :&nbsp; &nbsp;
                            <asp:Label ID="Usernamelbl" runat="server" Text="Label" ForeColor="#0033CC" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                            <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SRF Number :&nbsp; &nbsp;
                            <asp:Label ID="SRFNOlbl" runat="server" Text="Label" ForeColor="#0033CC" style="text-align: right" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Company :&nbsp;&nbsp;
                            &nbsp;<asp:Label ID="Companynamelbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                            &nbsp;<br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Text="Contact No. :"></asp:Label>
&nbsp;&nbsp;
                            <asp:Label ID="Contactlbl" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="Large" style="font-size: large" Text="Label"></asp:Label>
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; ProjectCode :&nbsp; &nbsp;
                            <asp:Label ID="Projectcodelbl" runat="server" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large" Text="Label"></asp:Label>
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date &amp; Time :&nbsp; &nbsp;
                            <asp:Label ID="Datetimelbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Title :&nbsp; &nbsp; <asp:Label ID="Titlelbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>

                            &nbsp;&nbsp;<br />
                            <br />
                            Description Of Service Request :&nbsp;&nbsp;
                            <p style="border:3px; border-style:solid; border-color:#000000; padding: 1em";
                            <asp:Label ID="Descriptionlbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [PROJECTCODE] FROM [PROJECT] WHERE ([CLIENTID] = @CLIENTID)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="CLIENTID" SessionField="ClientID" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            </td>
                    </tr>
                    </table>
                   
                   

                            </td>
                    </tr>
                    </table>
                   
                   

                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style3">

                   

                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style29">
                   
                   

                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <br />
                            <strong><span class="auto-style26">Section B : Impact Analysis - Fill By CSE</span></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project Code &amp; Name :&nbsp;&nbsp;<asp:Label ID="Projectcodenamelbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Date &amp; Time Responded :&nbsp;&nbsp;<asp:Label ID="Datetimerespondlbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Project Phase :&nbsp;&nbsp;<asp:Label ID="Projectphaselbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [PROJECTPHASE] FROM [SERVICE]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Person Assigned :&nbsp;
                            <asp:Label ID="Personassignlbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [NAME] FROM [USERPASS] WHERE ([USERGROUP] = @USERGROUP)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="ENGINEER" Name="USERGROUP" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Estimated Start Date :&nbsp;
                            &nbsp;<asp:Label ID="Startlbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                            <br />
                            &nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Estimated End Date :&nbsp;
                            <asp:Label ID="Endlbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Text="Chargeable"></asp:Label>
&nbsp;<asp:Label ID="Chargeablelbl" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="ManDay"></asp:Label>
                            :
                            <asp:Label ID="Mandaylbl" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                            &nbsp; Rate<asp:Label ID="Ratelbl" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                            /day&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Text="Amount:"></asp:Label>
                            <asp:Label ID="Amountlbl" runat="server" ForeColor="Red" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server" Text="Currency:"></asp:Label>
                            <asp:Label ID="Currencylbl" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                            &nbsp;Other Expenses:<asp:Label ID="Expenseslbl" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                            &nbsp;Reason:<asp:Label ID="Reasonlbl" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;</td>
                    </tr>
                </table>
                   

                   

                        </td>
                    </tr>
                    </table>
                   

                   

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                        </td>
                    </tr>
                    </table>
                   

                   

                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style31">
                            &nbsp;<table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <strong>
                            <br class="auto-style26" />
                            </strong>
                            <span class="auto-style25"><strong>Section C : Evaluation - Fill By Customer (Applicable for Chargeable Item)</strong></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style32">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Label ID="Label8" runat="server" Text="Evaluation :"></asp:Label>
                            &nbsp;
                            <asp:Label ID="Evaluationlbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                        &nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style28">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="Keep In View till :"></asp:Label>
&nbsp;<asp:Label ID="KIVlbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Other Comments :&nbsp;
                            <asp:Label ID="Commentlbl" runat="server" Text="Label" CssClass="auto-style26" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    </table>
                   
                        </td>
                    </tr>
                </table>
                   
                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <strong>
                            <br class="auto-style26" />
                            </strong><span class="auto-style26"><strong>Section D : Summary of Changes Done - Fill By CSE</strong></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <br />
                            Actions Taken :&nbsp;
                            <br />
                            <br />
                            <p style="border:3px; border-style:solid; border-color:#000000; padding: 1em";
                            <asp:Label ID="Actionslbl" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
                   <table border="1" class="auto-style1">
                       <tr>
                           <td class="auto-style15">Programmes/Document&nbsp;Name &amp; No.</td>
                           <td class="auto-style16">Version</td>
                           <td class="auto-style16">Released Date</td>
                           <td class="auto-style17">Old</td>
                           <td class="auto-style18">New</td>
                       </tr>
                       <tr>
                           <td class="auto-style19">
                               <asp:Label ID="Docname1lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style20">
                               <asp:Label ID="Version1lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style20">
                               <asp:Label ID="Date1lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style21">
                               <asp:Label ID="Old1lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style22">
                               <asp:Label ID="New1lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style11">
                               <asp:Label ID="Docname2lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style12">
                               <asp:Label ID="Version2lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style12">
                               <asp:Label ID="Date2lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style13">
                               <asp:Label ID="Old2lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style14">
                               <asp:Label ID="New2lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style11">
                               <asp:Label ID="Docname3lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style12">
                               <asp:Label ID="Version3lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style12">
                               <asp:Label ID="Date3lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style13">
                               <asp:Label ID="Old3lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style14">
                               <asp:Label ID="New3lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style11">
                               <asp:Label ID="Docname4lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style12">
                               <asp:Label ID="Version4lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style12">
                               <asp:Label ID="Date4lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style13">
                               <asp:Label ID="Old4lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td class="auto-style14">
                               <asp:Label ID="New4lbl" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>
                </table>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <br />
                            Configuration Record Updated ?
                            <asp:Label ID="Configyesnolbl" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="Label11" runat="server" Text="Why?" ForeColor="Red"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Configrecordlbl" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
                   
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <strong>
                            <br class="auto-style26" />
                            </strong>
                            <span class="auto-style25"><strong>Section E : Acceptance - Fill by Customer To Close The Change Request</strong></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style34">
                            <br />
                            <br />
                            <asp:Label ID="Label13" runat="server" Text="Please print out and sign on Section C and E of SRF"></asp:Label>
                        </td>
                        <td class="auto-style24">
                            <br />
                            <br />
                            <asp:Label ID="Label14" runat="server" Text="Please upload signed form here:"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style34"><asp:Button ID="btnPrint" runat="server" Text="Print" style="text-align: center" Height="26px" Width="64px" OnClick="btnPrint_Click"/>
                        </td>
                        <td class="auto-style24"><asp:Button ID="btnUpload" runat="server" Text="Upload" Width="64px" />
                        &nbsp;&nbsp; &nbsp; <asp:Button ID="Unconfirm" runat="server" Text="Unconfirm" OnClick="Unconfirm_Click" />
                        </td>
                    </tr>
                </table>
                   
            
