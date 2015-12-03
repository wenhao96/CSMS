<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_companyinformation.ascx.cs" Inherits="BasicControls_wuc_companyinformation" %>
<style type="text/css">
    .auto-style5 {
    }
    .auto-style1 {
        width: 426px;
    }
    .auto-style9 {
        width: 841px;
    }
    .auto-style10 {
        color: #FF0000;
    }
    .auto-style11 {
        color: #3366FF;
    }
    </style>

<body style="text-align: center">
<article>
                <header>
                        Company Information
                </header>
                <table>
                    <tr>
                        <td class="auto-style5">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style9" rowspan="4" aria-atomic="False" aria-autocomplete="none">
                                        <br />
                                        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" Width="814px" style="font-size: small; text-align: center">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="COMPANYNAME" HeaderText="Company Name" SortExpression="COMPANYNAME" />
                                                <asp:BoundField DataField="COMPANYADDRESS" HeaderText="Company Address" SortExpression="COMPANYADDRESS" />
                                                <asp:BoundField DataField="COMPANYPHONE" HeaderText="Company Phone" SortExpression="COMPANYPHONE" />
                                                <asp:BoundField DataField="COMPANYFAX" HeaderText="Company Fax" SortExpression="COMPANYFAX" />
                                                <asp:BoundField DataField="WEBSITE" HeaderText="Website" SortExpression="WEBSITE" />
                                            </Columns>
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" InsertCommand="INSERT INTO COMPANY(COMPANYNAME, COMPANYADDRESS, COMPANYPHONE, COMPANYFAX, WEBSITE) VALUES (@COMPANYNAME, @COMPANYADDRESS, @COMPANYPHONE, @COMPANYFAX, @WEBSITE)" SelectCommand="SELECT COMPANYNAME, COMPANYADDRESS, COMPANYPHONE, COMPANYFAX, WEBSITE FROM COMPANY" UpdateCommand="UPDATE COMPANY SET COMPANYNAME = @COMPANYNAME, COMPANYADDRESS = @COMPANYADDRESS, COMPANYPHONE = @COMPANYPHONE, COMPANYFAX = @COMPANYFAX, WEBSITE = @WEBSITE">
                                            <InsertParameters>
                                                <asp:Parameter Name="COMPANYNAME" />
                                                <asp:Parameter Name="COMPANYADDRESS" />
                                                <asp:Parameter Name="COMPANYPHONE" />
                                                <asp:Parameter Name="COMPANYFAX" />
                                                <asp:Parameter Name="WEBSITE" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="COMPANYNAME" />
                                                <asp:Parameter Name="COMPANYADDRESS" />
                                                <asp:Parameter Name="COMPANYPHONE" />
                                                <asp:Parameter Name="COMPANYFAX" />
                                                <asp:Parameter Name="WEBSITE" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                        <span class="auto-style10">
                                        <br />
                                        Search For Company Name</span><br class="auto-style10" />
                                        <br />
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                                        <asp:Button ID="Button1" runat="server" Text="Search" />
                                        <br />
                                        <br />
                                        Company Information<br />
                                        <br />
                                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style="margin-bottom: 2px; font-size: small;" Width="813px">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="COMPANYNAME" HeaderText="COMPANYNAME" SortExpression="COMPANYNAME" />
                                                <asp:BoundField DataField="COMPANYADDRESS" HeaderText="COMPANYADDRESS" SortExpression="COMPANYADDRESS" />
                                                <asp:BoundField DataField="COMPANYFAX" HeaderText="COMPANYFAX" SortExpression="COMPANYFAX" />
                                                <asp:BoundField DataField="WEBSITE" HeaderText="WEBSITE" SortExpression="WEBSITE" />
                                            </Columns>
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [COMPANYNAME], [COMPANYADDRESS], [COMPANYFAX], [WEBSITE] FROM [COMPANYINFO] WHERE ([COMPANYNAME] LIKE '%' + @COMPANYNAME + '%')">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="TextBox1" Name="COMPANYNAME" PropertyName="Text" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                        Contact Details<br />
                                        <br />
                                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="812px" AllowPaging="True" style="font-size: small">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="SALUTATION" HeaderText="SALUTATION" SortExpression="SALUTATION" />
                                                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                                                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                                <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                                                <asp:BoundField DataField="HANDPHONE" HeaderText="HANDPHONE" SortExpression="HANDPHONE" />
                                                <asp:BoundField DataField="SKYPE" HeaderText="SKYPE" SortExpression="SKYPE" />
                                                <asp:BoundField DataField="POSITION" HeaderText="POSITION" SortExpression="POSITION" />
                                                <asp:BoundField DataField="COMPANYNAME" HeaderText="COMPANYNAME" SortExpression="COMPANYNAME" />
                                            </Columns>
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                        <br />
                                        <span class="auto-style11">For Editting &amp; New Entry</span><br />
                                        <br />
                                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" Height="50px" Width="812px" DataKeyNames="CLIENTID" style="font-size: small; text-align: left">
                                            <AlternatingRowStyle BackColor="White" />
                                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                            <Fields>
                                                <asp:BoundField DataField="CLIENTID" HeaderText="Client ID" InsertVisible="False" ReadOnly="True" SortExpression="CLIENTID" />
                                                <asp:BoundField DataField="COMPANYNAME" HeaderText="Company Name" SortExpression="COMPANYNAME" />
                                                <asp:BoundField DataField="COMPANYADDRESS" HeaderText="Company Address" SortExpression="COMPANYADDRESS" />
                                                <asp:BoundField DataField="COMPANYPHONE" HeaderText="Company Phone" SortExpression="COMPANYPHONE" />
                                                <asp:BoundField DataField="COMPANYFAX" HeaderText="Company Fax" SortExpression="COMPANYFAX" />
                                                <asp:BoundField DataField="WEBSITE" HeaderText="Website" SortExpression="WEBSITE" />
                                                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                                            </Fields>
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                        </asp:DetailsView>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [SALUTATION], [NAME], [EMAIL], [PHONE], [HANDPHONE], [SKYPE], [POSITION],[COMPANYNAME] FROM [COMPANYINFO] WHERE ([COMPANYNAME] LIKE '%' + @COMPANYNAME + '%')">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="TextBox1" Name="COMPANYNAME" PropertyName="Text" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" InsertCommand="INSERT INTO COMPANY(COMPANYNAME, COMPANYADDRESS, COMPANYPHONE, COMPANYFAX, WEBSITE) VALUES (@COMPANYNAME, @COMPANYADDRESS, @COMPANYPHONE, @COMPANYFAX, @WEBSITE)" SelectCommand="SELECT COMPANY.* FROM COMPANY" UpdateCommand="UPDATE COMPANY SET COMPANYNAME = @COMPANYNAME, COMPANYADDRESS = @COMPANYADDRESS, COMPANYPHONE = @COMPANYPHONE, COMPANYFAX = @COMPANYFAX, WEBSITE = @WEBSITE WHERE (CLIENTID = @CLIENTID)">
                                            <InsertParameters>
                                                <asp:Parameter Name="COMPANYNAME" />
                                                <asp:Parameter Name="COMPANYADDRESS" />
                                                <asp:Parameter Name="COMPANYPHONE" />
                                                <asp:Parameter Name="COMPANYFAX" />
                                                <asp:Parameter Name="WEBSITE" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="COMPANYNAME" />
                                                <asp:Parameter Name="COMPANYADDRESS" />
                                                <asp:Parameter Name="COMPANYPHONE" />
                                                <asp:Parameter Name="COMPANYFAX" />
                                                <asp:Parameter Name="WEBSITE" />
                                                <asp:Parameter Name="CLIENTID" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                    </td>
                                </tr>
               <center>
                                <tr>
               <center>
                                </tr>
               <center>
                                <tr>
               <center>
                                </tr>
               <center>
                                <tr>
               <center>
                                </tr>
                            </table>
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
                <footer><h5>&nbsp;</h5></footer>
            </article>
