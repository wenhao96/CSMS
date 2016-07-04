<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_SectionA.ascx.cs" Inherits="BasicControls_wuc_SectionA" %>
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
    </style>
                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style25" style="text-align: left"><strong>Section A : Service Request</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Requested By :&nbsp;
                            <asp:Label ID="Usernamelbl" runat="server" Text="Label" ForeColor="#0033CC"></asp:Label>
                            <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SRF Number :&nbsp; <asp:Label ID="SRFNOlbl" runat="server" Text="Label" ForeColor="#0033CC" style="text-align: right"></asp:Label>
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company :
                            &nbsp;<asp:Label ID="Companynamelbl" runat="server" Text="Label"></asp:Label>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Contact No. :"></asp:Label>
&nbsp;<asp:TextBox ID="ContactTB" runat="server"></asp:TextBox>
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ProjectCode :&nbsp; <asp:DropDownList ID="ProjectcodeDDL" runat="server" DataSourceID="SqlDataSource3" DataTextField="PROJECTCODE" DataValueField="PROJECTCODE" AutoPostBack="True" OnPreRender="ProjectcodeDDL_PreRender" OnSelectedIndexChanged="ProjectcodeDDL_SelectedIndexChanged" style="font-size: small">
                            </asp:DropDownList>
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date &amp; Time :&nbsp; <asp:TextBox ID="DatetimeTB" runat="server" textmode="DateTimeLocal" style="font-size: small"></asp:TextBox>
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Title :&nbsp; <asp:TextBox ID="TitleTB" runat="server" Rows="1" MaxLength="100" Width="20%" style="font-size: small"></asp:TextBox>

                            &nbsp;&nbsp;(Max 100words)<br />
                            <br />
                            Description Of Service Request :
                           
                            <asp:TextBox ID="DescriptionTB" runat="server" Height="217px" Width="520px" BorderColor="#CCCCCC" TextMode="MultiLine" style="margin-right: 16px"></asp:TextBox>
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
                    <tr>
                        <td>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <br />
                            &nbsp;<asp:Button ID="btnSave" runat="server" Text="Save" style="text-align: center" Height="26px" Width="64px" OnClick="btnSave_Click"/>
                        &nbsp;<asp:Button ID="BtnConfirm" runat="server" Text="Confirm" OnClick="BtnConfirm_Click" />
                        </td>
                    </tr>
                    </table>
                   
<footer>
    <h5 class="auto-style27">Remember to fill in the blanks </h5>
    <h5></h5>
</footer>

                   
