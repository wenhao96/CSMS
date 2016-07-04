<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_newusermanagement.ascx.cs" Inherits="BasicControls_wuc_usermanagement" %>
<style type="text/css">
    .auto-style5 {
        width: 789px;
    }
    .auto-style10 {
        color: #FF0000;
    }
    </style>

<body style="text-align: center"></body>
<article>
                <header>
                        User Management
                </header>
                <table>
                    <tr>
                        <td class="auto-style5">
                            <br />
                            <asp:DetailsView ID="DetailsView1" DefaultMode="Edit" runat="server" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" Width="605px" DataKeyNames="USERID" style="text-align: left; font-size: small" OnItemInserting="DetailsView1_ItemInserting" HorizontalAlign="Center" DataSourceID="SqlDataSource3">
                                <AlternatingRowStyle BackColor="White" />
                                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                <Fields>
                                    <asp:BoundField DataField="USERID" HeaderText="USERID" ReadOnly="True" SortExpression="USERID" />
                                    <asp:BoundField DataField="SALUTATION" HeaderText="SALUTATION" SortExpression="SALUTATION" />
                                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                    <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                                    <asp:BoundField DataField="HANDPHONE" HeaderText="HANDPHONE" SortExpression="HANDPHONE" />
                                    <asp:BoundField DataField="SKYPE" HeaderText="SKYPE" SortExpression="SKYPE" />
                                    <asp:BoundField DataField="POSITION" HeaderText="POSITION" SortExpression="POSITION" />
                                    <asp:BoundField DataField="SITEID" HeaderText="SITEID" SortExpression="SITEID" />
                                </Fields>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT USERID, SALUTATION, NAME, EMAIL, PHONE, HANDPHONE, SKYPE, POSITION, SITEID FROM USERPASS WHERE (CLIENTID LIKE '%' + @CLIENTID + '%')" UpdateCommand="UPDATE USERID, SALUTATION, NAME, EMAIL, PHONE, HANDPHONE, SKYPE, POSITION, SITEID FROM USERPASS WHERE (CLIENTID LIKE '%' + @CLIENTID + '%')" InsertCommand="INSERT USERID, SALUTATION, NAME, EMAIL, PHONE, HANDPHONE, SKYPE, POSITION, SITEID FROM USERPASS WHERE (CLIENTID LIKE '%' + @CLIENTID + '%')">
                                <InsertParameters>
                                    <asp:Parameter Name="CLIENTID" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="0" Name="CLIENTID" SessionField="CLIENTID" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="CLIENTID" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                                        <asp:Label ID="UserCreatedLabel" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Candara" ForeColor="#3333CC" Text="User created succesfully!" Visible="False"></asp:Label>
                                        <span class="auto-style10">
                            <br />
                            </span>
                            <br />
                        </td> 
               <center> 
                    </tr>
                </table>
                   </center>
                   </center>
                   </center>
                   </center>
                   </center>
                   </center>
                   </center>
                <footer></footer>
            </article>
