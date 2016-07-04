<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_projectlibrary.ascx.cs" Inherits="BasicControls_wuc_projectlibrary" %>
<style type="text/css">

    .auto-style5 {        width: 739px;
    }
    .auto-style6 {
        color: #3366FF;
    }
    </style>

<body style="text-align: center"></body>
<article>
                <header>
                        Project Library</header>
                <table>
                    <tr>
                        <td class="auto-style5">
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="#333333" GridLines="None" DataKeyNames="PROJECTCODE" style="font-size: small" Width="814px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="NO" HeaderText="NO" SortExpression="NO" InsertVisible="False" ReadOnly="True" />
                                    <asp:TemplateField HeaderText="Project Code" SortExpression="PROJECTCODE">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("PROJECTCODE") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <title>PopUp Windows</title>
                                            <asp:LinkButton ID="Popup1" runat="server" Text='<%# Eval("PROJECTCODE") %>' OnClientClick="WindowsOpen(this)" ForeColor="Blue" Font-Underline="true"/>
                                            <script type="text/javascript">
                                                function WindowsOpen(value)
                                                {
                                                    myWindow = window.open("ProjPopup.aspx?projcode=" + value.innerText, "List", "toolbar=yes, location=yes,status=yes,menubar=yes,scrollbars=yes,resizable=yes, width=1000, height=400,left=430,top=100");
                                                    myWindow = focus()
                                                    return false;
                                                }
                                            </script>
                                            <!-- <asp:Label ID="Label1" runat="server" Text='<%# Bind("PROJECTCODE") %>'></asp:Label> -->
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="COMPANYNAME" HeaderText="Company Name" SortExpression="COMPANYNAME" />
                                    <asp:BoundField DataField="PROJECTNAME" HeaderText="Project Name" SortExpression="PROJECTNAME" />
                                    <asp:BoundField DataField="PROJECTPHASE" HeaderText="Project Phase" SortExpression="PROJECTPHASE" />
                                    <asp:BoundField DataField="PROJECTMANAGER" HeaderText="Project Manager" SortExpression="PROJECTMANAGER" />
                                    <asp:BoundField DataField="STARTDATE" HeaderText="Start Date" SortExpression="STARTDATE" />
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
                            <asp:SqlDataSource ID="SqlDataSource7" runat="server"  ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [NO], [PROJECTCODE], [COMPANYNAME], [PROJECTNAME], [PROJECTTYPE], [STARTDATE], [PROJECTPHASE], [PROJECTMANAGER] FROM [PROJECT] WHERE ([PROJECTCODE] LIKE '%' + @PROJECTCODE + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="PROJECTCODE" PropertyName="Text" Type="String" DefaultValue="P" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Search Through Project Code"></asp:Label>
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="155px"></asp:TextBox>
                            &nbsp;<asp:Button ID="Button1" runat="server" Text="Search" />
                           <!-- <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [NO], [PROJECTCODE], [COMPANYNAME], [PROJECTNAME], [PROJECTTYPE], [STARTDATE], [PROJECTPHASE], [PROJECTMANAGER] FROM [PROJECT] WHERE ([PROJECTCODE] LIKE '%' + @PROJECTCODE + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="PROJECTCODE" PropertyName="Text" Type="String" DefaultValue="P" />
                                </SelectParameters>
                            </asp:SqlDataSource> -->
                            <br />
                          
                           <span class="auto-style6">
                            <br />
                            <br />
                            <br />
                            For Editing &amp; New Entry<br />
                            <br />
                            </span>
                            <br />
                           <asp:DetailsView ID="DetailsView1" DefaultMode="Insert"  runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" Height="16px" Width="474px" DataKeyNames="PROJECTCODE" style="text-align: justify; font-size: small" HorizontalAlign="Center">
                                <AlternatingRowStyle BackColor="White" />
                                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                <Fields>
                                    <asp:BoundField DataField="PROJECTCODE" HeaderText="Project Code *" SortExpression="PROJECTCODE" ReadOnly="True" NullDisplayText=" " />
                                    <asp:TemplateField HeaderText="Company Name *" SortExpression="COMPANYNAME">
                                        <InsertItemTemplate>
                                            <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("COMPANYNAME") %>'></asp:TextBox>--%>
                                              <asp:DropDownList ID="CompanyNameDropDownList" runat="server" SelectedValue ='<%# Bind("COMPANYNAME") %>' DataSourceID="SqlDataSource1" DataTextField="COMPANYNAME" DataValueField="COMPANYNAME"> </asp:DropDownList>                                       
                                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [COMPANYNAME] FROM [COMPANY]"></asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("COMPANYNAME") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="SITEID" HeaderText="Site ID" SortExpression="SITEID" />
                                    <asp:BoundField DataField="PROJECTNAME" HeaderText="Project Name *" SortExpression="PROJECTNAME" />
                                    <asp:TemplateField HeaderText="Project Type *" SortExpression="PROJECTTYPE">
                                        <InsertItemTemplate>
                                            <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PROJECTTYPE") %>'></asp:TextBox>--%>
                                            <asp:DropDownList ID="ProjectTypeDropDownList" runat="server" SelectedValue ='<%# Bind("PROJECTTYPE") %>'  AutoPostBack="true" Enabled ="true" >
                                                 <asp:ListItem Value="LIMS"> LIMS </asp:ListItem>
                                                <asp:ListItem Value="PIMS"> PIMS </asp:ListItem>
                                                <asp:ListItem Value="DRS"> DRS </asp:ListItem>
                                            </asp:DropDownList>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("PROJECTTYPE") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="SYSTEMID" HeaderText="System ID" SortExpression="SYSTEMID" />
                                    <asp:BoundField DataField="SALESCODE" HeaderText="Sales Code" SortExpression="SALESCODE" />
                                    <asp:TemplateField HeaderText="Start Date *" SortExpression="STARTDATE">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("STARTDATE") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("STARTDATE") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ENDDATE" HeaderText="End Date" SortExpression="ENDDATE" />
                                    <asp:BoundField DataField="WARRANTYENDDATE" HeaderText="Warranty End Date" SortExpression="WARRANTYENDDATE" />
                                    <asp:BoundField DataField="CONTRACTCURRENCY" HeaderText="Contract Currency" SortExpression="CONTRACTCURRENCY" />
                                    <asp:BoundField DataField="CONTRACTVALUE" HeaderText="Contract Value" SortExpression="CONTRACTVALUE" />
                                    <asp:BoundField DataField="REMARKS" HeaderText="Remarks" SortExpression="REMARKS" />
                                    <asp:TemplateField HeaderText="Project Phase" SortExpression="PROJECTPHASE">
                                        <InsertItemTemplate>
                                            <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PROJECTPHASE") %>'></asp:TextBox>--%>
                                            <asp:DropDownList ID="ProjectPhaseDropDownList" runat="server" SelectedValue ='<%# Bind("PROJECTPHASE") %>'  AutoPostBack="true" Enabled ="true" >
                                                 <asp:ListItem Value="FDS"> FDS </asp:ListItem>
                                                <asp:ListItem Value="Implementation"> Implementation </asp:ListItem>
                                                <asp:ListItem Value="FAT"> FAT </asp:ListItem>
                                                 <asp:ListItem Value="SAT"> SAT </asp:ListItem>
                                                 <asp:ListItem Value="Documentation"> Documentation </asp:ListItem>
                                                 <asp:ListItem Value="Warranty"> Warranty </asp:ListItem>
                                                 <asp:ListItem Value="Maintainence"> Maintainence </asp:ListItem>
                                                 <asp:ListItem Value="Per-Call"> Per-Call </asp:ListItem>
                                            </asp:DropDownList>
                                        </InsertItemTemplate>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("PROJECTPHASE") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="PROJECTMANAGER" HeaderText="Project Manager *" SortExpression="PROJECTMANAGER" />
                                    <asp:CommandField ShowInsertButton="True" CancelText="Clear" >
                                    <FooterStyle VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:CommandField>
                                </Fields>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" InsertCommand="INSERT INTO PROJECT(PROJECTCODE, COMPANYNAME, PROJECTNAME, PROJECTPHASE, PROJECTMANAGER, STARTDATE, ENDDATE, WARRANTYENDDATE, CONTRACTCURRENCY, CONTRACTVALUE, REMARKS, SALESCODE, SYSTEMID, PROJECTTYPE, SITEID) VALUES (@PROJECTCODE, @COMPANYNAME, @PROJECTNAME, @PROJECTPHASE, @PROJECTMANAGER, @STARTDATE, @ENDDATE, @WARRANTYENDDATE, @CONTRACTCURRENCY, @CONTRACTVALUE, @REMARKS, @SALESCODE, @SYSTEMID, @PROJECTTYPE, @SITEID)" SelectCommand="SELECT * FROM PROJECT">
                                <InsertParameters>
                                    <asp:Parameter Name="NO" />
                                    <asp:Parameter Name="PROJECTCODE" />
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
                                </InsertParameters>
                
                            </asp:SqlDataSource>
                            <br />
                            
                        </td> 
                    </tr>
                </table>
                <footer><h5>All data cannot be deleted. Please add in carefully.</h5></footer>
            </article>