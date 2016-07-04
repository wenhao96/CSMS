<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProjPopup.aspx.cs" Inherits="ProjPopup" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                    <br />
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="16px" Width="811px" DataKeyNames="PROJECTCODE" style="text-align: left; font-size: small" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="PROJECTCODE" HeaderText="PROJECTCODE" SortExpression="PROJECTCODE"  />
                            <asp:TemplateField HeaderText="COMPANYNAME" SortExpression="COMPANYNAME">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="CompanyNameDropDownList" runat="server" SelectedValue ='<%# Bind("COMPANYNAME") %>' DataSourceID="SqlDataSource1" DataTextField="COMPANYNAME" DataValueField="COMPANYNAME"> </asp:DropDownList>                                       
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [COMPANYNAME] FROM [COMPANY]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("COMPANYNAME") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CLIENTID" SortExpression="CLIENTID">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("CLIENTID") %>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="SITEID" HeaderText="SITEID" SortExpression="SITEID" />
                            <asp:BoundField DataField="PROJECTNAME" HeaderText="PROJECTNAME" SortExpression="PROJECTNAME" />
                            <asp:TemplateField HeaderText="PROJECTTYPE" SortExpression="PROJECTTYPE">
                                <EditItemTemplate>
                                        <asp:DropDownList ID="ProjectTypeDropDownList" runat="server"  Text='<%# Bind("PROJECTTYPE") %>' AutoPostBack="true" Enabled ="true" >
                                            <asp:ListItem Value="LIMS"> LIMS </asp:ListItem>
                                        <asp:ListItem Value="PIMS"> PIMS </asp:ListItem>
                                        <asp:ListItem Value="DRS"> DRS </asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("PROJECTTYPE") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="SYSTEMID" HeaderText="SYSTEMID" SortExpression="SYSTEMID" />
                            <asp:BoundField DataField="SALESCODE" HeaderText="SALESCODE" SortExpression="SALESCODE" />
                            <asp:BoundField DataField="STARTDATE" HeaderText="STARTDATE" SortExpression="STARTDATE" />
                            <asp:BoundField DataField="ENDDATE" HeaderText="ENDDATE" SortExpression="ENDDATE" />
                            <asp:BoundField DataField="WARRANTYENDDATE" HeaderText="WARRANTYENDDATE" SortExpression="WARRANTYENDDATE" />

                            <asp:BoundField DataField="CONTRACTCURRENCY" HeaderText="CONTRACTCURRENCY" SortExpression="CONTRACTCURRENCY" />
                            <asp:BoundField DataField="CONTRACTVALUE" HeaderText="CONTRACTVALUE" SortExpression="CONTRACTVALUE" />
                            <asp:BoundField DataField="REMARKS" HeaderText="REMARKS" SortExpression="REMARKS" />
                            <asp:TemplateField HeaderText="PROJECTPHASE" SortExpression="PROJECTPHASE">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ProjectPhaseDropDownList" runat="server"  AutoPostBack="true" Text='<%# Bind("PROJECTPHASE") %>' Enabled ="true" >
                                            <asp:ListItem Value="FDS"> FDS </asp:ListItem>
                                        <asp:ListItem Value="Implementation"> Implementation </asp:ListItem>
                                        <asp:ListItem Value="FAT"> FAT </asp:ListItem>
                                            <asp:ListItem Value="SAT"> SAT </asp:ListItem>
                                            <asp:ListItem Value="Documentation"> Documentation </asp:ListItem>
                                            <asp:ListItem Value="Warranty"> Warranty </asp:ListItem>
                                            <asp:ListItem Value="Maintainence"> Maintainence </asp:ListItem>
                                            <asp:ListItem Value="Per-Call"> Per-Call </asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("PROJECTPHASE") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="PROJECTMANAGER" HeaderText="PROJECTMANAGER" SortExpression="PROJECTMANAGER" />
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
                    <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [PROJECT] WHERE ([PROJECTCODE] = @PROJECTCODE)" UpdateCommand="UPDATE PROJECT SET COMPANYNAME = @COMPANYNAME, PROJECTNAME = @PROJECTNAME, PROJECTPHASE = @PROJECTPHASE, PROJECTMANAGER = @PROJECTMANAGER, STARTDATE = @STARTDATE, ENDDATE = @ENDDATE, WARRANTYENDDATE = @WARRANTYENDDATE, CONTRACTCURRENCY = @CONTRACTCURRENCY, CONTRACTVALUE = @CONTRACTVALUE, REMARKS = @REMARKS, SALESCODE = @SALESCODE, SYSTEMID = @SYSTEMID, PROJECTTYPE = @PROJECTTYPE, SITEID = @SITEID WHERE CLIENTID = @CLIENTID">
                        <UpdateParameters>
                            <asp:Parameter Name="COMPANYNAME" />
                            <asp:Parameter Name="PROJECTNAME" />
                            <asp:Parameter Name="PROJECTPHASE" />
                            <asp:Parameter Name="PROJECTMANAGER" />
                            <asp:Parameter Name="STARTDATE" />
                            <asp:Parameter Name="ENDDATE" />
                            <asp:Parameter Name="WARRANTYENDDATE" />
                            <asp:Parameter Name="CONTRACTCURRENCY" />
                            <asp:Parameter Name="CONTRACTVALUE" />
                            <asp:Parameter Name="REMARKS" />
                            <asp:Parameter Name="SALESCODE" />
                            <asp:Parameter Name="SYSTEMID" />
                            <asp:Parameter Name="PROJECTTYPE" />
                            <asp:Parameter Name="SITEID" />
                            <asp:Parameter Name="CLIENTID" />
                        </UpdateParameters>
                        <SelectParameters>
                            <asp:QueryStringParameter Name="PROJECTCODE" QueryStringField="projcode" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
