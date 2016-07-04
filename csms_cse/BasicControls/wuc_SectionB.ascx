<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_SectionB.ascx.cs" Inherits="BasicControls_wuc_SectionB" %>
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
    .auto-style27 {
        text-align: center;
    }
    .auto-style6 {
        text-align: left;
        text-decoration: underline;
    }
    .auto-style26 {
        font-size: large;
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
        height: 229px;
    }
</style>
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
                   
                   

                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <br />
                            <strong><span class="auto-style26">Section B : Impact Analysis - Fill By CSE</span></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project Code &amp; Name :&nbsp;&nbsp;<asp:TextBox ID="Projectcodename" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Date &amp; Time Responded :&nbsp;&nbsp;<asp:TextBox ID="Datetimerespond" runat="server" textmode="DateTimeLocal" style="font-size: small"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Project Phase :&nbsp;&nbsp;<asp:RadioButtonList ID="RadioButtonListPP" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>Warranty</asp:ListItem>
                                <asp:ListItem>Maintenance</asp:ListItem>
                                <asp:ListItem>Per Call (No Contract)</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [PROJECTPHASE] FROM [SERVICE]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31">
                            <br />
                            Analysis (Person assigned, Schedule Impact, Estimated Start Date &amp; End Date etc) :<br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Person Assigned :&nbsp;
                            <asp:DropDownList ID="PersonassignDDL" runat="server" DataSourceID="SqlDataSource5" DataTextField="NAME" DataValueField="NAME">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [NAME] FROM [USERPASS] WHERE ([USERGROUP] = @USERGROUP)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="ENGINEER" Name="USERGROUP" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Estimated Start Date :&nbsp;
                            <asp:TextBox ID="Startdate" runat="server" textmode="Date" style="font-size: small"></asp:TextBox>
                            &nbsp;<br />
                            &nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Estimated End Date :&nbsp;
                            <asp:TextBox ID="Enddate" runat="server" textmode="Date" style="font-size: small"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            &nbsp;<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Text="Chargeable"></asp:Label>
&nbsp;<asp:CheckBox ID="Chargeable" runat="server" Text="Yes" />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text="Currency :"></asp:Label>
                            &nbsp;<asp:DropDownList ID="Currency" runat="server">
                                <asp:ListItem>SGD</asp:ListItem>
                                <asp:ListItem>USD</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label8" runat="server" Text="Rate :"></asp:Label>
                            &nbsp;<asp:TextBox ID="Rate" runat="server" Width="50px"></asp:TextBox>
                            <asp:Label ID="Label9" runat="server" Text="per day"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Text="Other Expenses :"></asp:Label>
                            &nbsp;<asp:TextBox ID="Rate0" runat="server" Width="50px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label11" runat="server" Text="Reason :"></asp:Label>
                            &nbsp;<asp:TextBox ID="Rate1" runat="server" Width="50px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label12" runat="server" Text="Amount :"></asp:Label>
                            &nbsp;<asp:Label ID="Label13" runat="server" Text="Rate"></asp:Label>
&nbsp;* Man-day<asp:TextBox ID="Manday" runat="server" Height="18px" Width="43px"></asp:TextBox>
                            &nbsp;+ Other Expenses =
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSave" runat="server" Text="Save" style="text-align: center; margin-left: 0px;" Width="53px" OnClick="btnSave_Click"/>
                        &nbsp;<asp:Button ID="BtnConfirm" runat="server" Text="Confirm" Width="59px" OnClick="BtnConfirm_Click" />
                            &nbsp;<asp:Button ID="Unconfirm" runat="server" Text="Unconfirm" OnClick="Unconfirm_Click" />
                            <br />
                   
<footer>
    <h5 class="auto-style27">Remember to fill in the blanks </h5>
</footer>

                   

                        </td>
                    </tr>
                </table>
                   

                   

                    </article>
                    <p>
&nbsp;</p>


                   

                   

