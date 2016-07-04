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
                                                <asp:TemplateField HeaderText="Company Name" SortExpression="COMPANYNAME">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("COMPANYNAME") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <title>PopUp Windows</title>
                                                        <asp:LinkButton ID="Popup1" runat="server" Text='<%# Eval("COMPANYNAME") %>' OnClientClick="WindowsOpen(this)" ForeColor="Blue" Font-Underline="true"/>
                                                        <script type="text/javascript">
                                                            function WindowsOpen(value) {
                                                                myWindow = window.open("CompanyNamePopup.aspx?cpyname=" + value.innerText, "List", "toolbar=yes, location=yes,status=yes,menubar=yes,scrollbars=yes,resizable=yes, width=1000, height=400,left=430,top=100");
                                                                myWindow = focus()
                                                                return false;
                                                            }
                                                        </script>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="COMPANYADDRESS" HeaderText="Address" SortExpression="COMPANYADDRESS" />
                                                <asp:BoundField DataField="COMPANYPHONE" HeaderText="Phone" SortExpression="COMPANYPHONE" />
                                                <asp:BoundField DataField="COMPANYFAX" HeaderText="Fax" SortExpression="COMPANYFAX" />
                                                <asp:BoundField DataField="WEBSITE" HeaderText="Website" SortExpression="WEBSITE" />
                                                <asp:TemplateField>
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ForeColor="Black" Font-Underline="true"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" ForeColor="Black" Font-Underline="true"></asp:LinkButton>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" ForeColor="Blue" Font-Underline="true"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
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
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" UpdateCommand="UPDATE COMPANY SET COMPANYADDRESS = @COMPANYADDRESS, COMPANYPHONE = @COMPANYPHONE, COMPANYFAX = @COMPANYFAX, WEBSITE = @WEBSITE WHERE (COMPANYNAME = @COMPANYNAME)" SelectCommand="SELECT [COMPANYNAME], [COMPANYADDRESS], [COMPANYPHONE], [COMPANYFAX], [WEBSITE] FROM [COMPANY] WHERE ([COMPANYNAME] LIKE '%' + @COMPANYNAME + '%')">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="CompanySearchBox" DefaultValue="%" Name="COMPANYNAME" PropertyName="Text" Type="String" />
                                            </SelectParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="COMPANYNAME" />
                                                <asp:Parameter Name="COMPANYADDRESS" />
                                                <asp:Parameter Name="COMPANYPHONE" />
                                                <asp:Parameter Name="COMPANYFAX" />
                                                <asp:Parameter Name="WEBSITE" />
                                            </InsertParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                        <span class="auto-style10">
                                        Search For Company Name</span><br class="auto-style10" />
                                        <br />
                                        <asp:TextBox ID="CompanySearchBox" runat="server"></asp:TextBox>
                                        &nbsp;
                                        <asp:Button ID="Button1" runat="server" Text="Search" />
                                        <br />
                                        <br />
                                        <br />
                                        <span class="auto-style11">For New Entry</span><br />
                                        <br />
                                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DefaultMode="Insert" CellPadding="4" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" Height="50px" Width="319px" DataKeyNames="CLIENTID" style="font-size: small; text-align: left" HorizontalAlign="Center">
                                            <AlternatingRowStyle BackColor="White" />
                                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                            <Fields>
                                                <asp:BoundField DataField="COMPANYNAME" HeaderText="Company Name *" SortExpression="COMPANYNAME" >
                                                <ControlStyle Width="110px" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="COMPANYADDRESS" HeaderText="Address *" SortExpression="COMPANYADDRESS" >
                                                <ControlStyle Width="110px" />
                                                </asp:BoundField>
                                                <asp:TemplateField HeaderText="Phone" SortExpression="COMPANYPHONE">
                                                    <EditItemTemplate>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Enabled ="true">  
                                                                                                                                                                                                                
                                                                    <asp:ListItem Value="60"> 60 </asp:ListItem> 
                                                                    <asp:ListItem Value="65"> 65 </asp:ListItem>
                                                                    <asp:ListItem Value="81"> 81 </asp:ListItem>
                                                                    <asp:ListItem Value="852"> 852 </asp:ListItem>
                                                                    <asp:ListItem Value="974"> 974 </asp:ListItem>
                                                                    </asp:DropDownList>         
                                                              <!--  <asp:TextBox ID="TextBox" runat="server" /> -->
                                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("COMPANYPHONE") %>'></asp:TextBox> 
                                                                                      
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("COMPANYPHONE") %>'></asp:TextBox> 
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("COMPANYPHONE") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ControlStyle Width="110px" />
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="COMPANYFAX" HeaderText="Fax" SortExpression="COMPANYFAX" >
                                                <ControlStyle Width="110px" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="WEBSITE" HeaderText="Website" SortExpression="WEBSITE" >
                                                <ControlStyle Width="110px" />
                                                </asp:BoundField>
                                                <asp:CommandField ShowInsertButton="True" CancelText="Clear" />
                                            </Fields>
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                        </asp:DetailsView>
                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" InsertCommand="INSERT INTO COMPANY(COMPANYNAME, COMPANYADDRESS, COMPANYPHONE, COMPANYFAX, WEBSITE) VALUES (@COMPANYNAME, @COMPANYADDRESS, @COMPANYPHONE, @COMPANYFAX, @WEBSITE)">
                                            <InsertParameters>
                                                <asp:Parameter Name="COMPANYNAME" />
                                                <asp:Parameter Name="COMPANYADDRESS" />
                                                <asp:Parameter Name="COMPANYPHONE" />
                                                <asp:Parameter Name="COMPANYFAX" />
                                                <asp:Parameter Name="WEBSITE" />
                                            </InsertParameters>
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
                <footer><h5>Welcome To Company Information</h5></footer>
            </article>
