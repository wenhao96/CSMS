<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_SectionC.ascx.cs" Inherits="BasicControls_wuc_SectionC" %>
<script runat="server">


</script>

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
    }
    .auto-style27 {
        text-align: center;
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
    .auto-style27 {
        text-align: center;
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
        height: 52px;
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
                        <td class="auto-style6">
                            <br />
                            <strong><span class="auto-style26">Section B : Impact Analysis - Fill By CSE</span></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project Code &amp; Name :&nbsp;&nbsp;<asp:Label ID="Projectcodenamelbl" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Date &amp; Time Responded :&nbsp;&nbsp;<asp:Label ID="Datetimerespondlbl" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Project Phase :&nbsp;&nbsp;<asp:Label ID="Projectphaselbl" runat="server" Text="Label"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [PROJECTPHASE] FROM [SERVICE]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <br />
                            Analysis (Person assigned, Schedule Impact, Estimated Start Date &amp; End Date etc) :<br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Person Assigned :&nbsp;
                            <asp:Label ID="Personassignlbl" runat="server" Text="Label"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [NAME] FROM [USERPASS] WHERE ([USERGROUP] = @USERGROUP)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="ENGINEER" Name="USERGROUP" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Estimated Start Date :&nbsp;
                            &nbsp;<asp:Label ID="Startlbl" runat="server" Text="Label"></asp:Label>
                            <br />
                            &nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Estimated End Date :&nbsp;
                            <asp:Label ID="Endlbl" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            &nbsp;<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;</td>
                    </tr>
                </table>
                   

                   

                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                   

                   

                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <strong>
                            <br class="auto-style26" />
                            </strong>
                            <span class="auto-style25"><strong>Section C : Evaluation - Fill By Customer (Applicable for Chargeable Item)</strong></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style31">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButtonList ID="RadioButtonListEva" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>Accepted</asp:ListItem>
                                <asp:ListItem>Withdrawn</asp:ListItem>
                                <asp:ListItem>KIV</asp:ListItem>
                            </asp:RadioButtonList>
                        &nbsp;&nbsp;<asp:TextBox ID="KeepInView" runat="server" textmode="Date" style="font-size: small"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Other Comments :&nbsp;
                            <asp:TextBox ID="Comment" runat="server" Height="82px" Width="238px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <br />
                            &nbsp;Customer&#39;s Reprensitive Name :&nbsp;
                            <asp:TextBox ID="Customername" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Signature :&nbsp;
                            <asp:TextBox ID="Signature" runat="server"></asp:TextBox>
&nbsp;&nbsp;<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Date :&nbsp; <asp:TextBox ID="Date" runat="server" textmode="Date" style="font-size: small"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                   
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style28">
                        <asp:Button ID="btnSave" runat="server" Text="Save" style="text-align: center; margin-left: 0px;" Width="53px" OnClick="btnSave_Click"/>
                        &nbsp;<asp:Button ID="BtnConfirm" runat="server" Text="Confirm" Width="59px" OnClick="Confirm_Click" Height="26px" />
                            &nbsp;<asp:Button ID="btnUnconfirm" runat="server" Text="Unconfirm" OnClick="btnUnconfirm_Click" />
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style27">
                            <h5>Remember to fill in the blanks </h5>
                        </td>
                    </tr>
                </table>
                   
