<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompanyNamePopup.aspx.cs" Inherits="CompanyNamePopup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 227px">
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="50px" style="margin-top: 0px" Width="125px">
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="SALUTATION" HeaderText="SALUTATION" SortExpression="SALUTATION" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                <asp:BoundField DataField="HANDPHONE" HeaderText="HANDPHONE" SortExpression="HANDPHONE" />
                <asp:BoundField DataField="SKYPE" HeaderText="SKYPE" SortExpression="SKYPE" />
                <asp:BoundField DataField="POSITION" HeaderText="POSITION" SortExpression="POSITION" />
            </Fields>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [SALUTATION], [NAME], [EMAIL], [PHONE], [HANDPHONE], [SKYPE], [POSITION] FROM [USERPASS] WHERE ([COMPANYNAME] = @COMPANYNAME)">
            <SelectParameters>
                <asp:QueryStringParameter Name="COMPANYNAME" QueryStringField="cpyname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
