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
                            <asp:DetailsView ID="DetailsView1" DefaultMode="Insert" runat="server" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" Width="605px" DataKeyNames="USERID" style="text-align: left; font-size: small" OnItemInserting="DetailsView1_ItemInserting" HorizontalAlign="Center">
                                <AlternatingRowStyle BackColor="White" />
                                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                <Fields>
                                    <asp:TemplateField HeaderText="User ID*" SortExpression="USERID">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="UserIDTB" runat="server" Text='<%# Bind("USERID") %>' OnTextChanged="UserIDTB_TextChanged" AutoPostBack="True"></asp:TextBox>
                                            <asp:Label ID="UserIDErrorLabel" runat="server" Text="UserID already exists!" Visible="False" Font-Bold="True" ForeColor="#CC0000" style="top: 133px; left: 192px; height: 19px; width: 163px; text-align: right" Width="50px"></asp:Label>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Salutation" SortExpression="SALUTATION">
                                        <InsertItemTemplate>
                                            <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SALUTATION") %>'></asp:TextBox>--%>
                                             <asp:DropDownList ID="SalutationDropDownList" runat="server" Enabled ="true"  >
                                                 <asp:ListItem Value="MR"> MR </asp:ListItem>
                                                <asp:ListItem Value="MRS"> MRS </asp:ListItem>
                                                <asp:ListItem Value="MS"> MS </asp:ListItem>
                                                 <asp:ListItem Value="MDM"> MDM </asp:ListItem>
                                            </asp:DropDownList>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Name*" SortExpression="NAME">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="NameTB" runat="server" Text='<%# Bind("NAME") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="E-Mail*" SortExpression="EMAIL">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="EMailTB" runat="server" AutoPostBack="true" Text='<%# Bind("EMAIL") %>' TextMode="Email"></asp:TextBox>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Phone" SortExpression="PHONE">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="PhoneTB" runat="server" Text='<%# Bind("PHONE") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Handphone" SortExpression="HANDPHONE">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="HPTB" runat="server" Text='<%# Bind("HANDPHONE") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Skype" SortExpression="SKYPE">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="SkypeTB" runat="server" Text='<%# Bind("SKYPE") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Position" SortExpression="POSITION">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="PositionTB" runat="server" Text='<%# Bind("POSITION") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Site ID" SortExpression="SITEID">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="SiteIDTB" runat="server" Text='<%# Bind("SITEID") %>' ></asp:TextBox>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Usergroup" SortExpression="USERGROUP">
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="UserGroupDropDownList" runat="server" Enabled ="true" >
                                                <asp:ListItem Value="Admin"> Admin </asp:ListItem>
                                                <asp:ListItem Value="Customer"> Customer </asp:ListItem>
                                                <asp:ListItem Value="Engineer"> Engineer </asp:ListItem>
                                            </asp:DropDownList>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Password" SortExpression="PASSWORD">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="PasswordTB" runat="server" Text='<%# Bind("PASSWORD") %>' TextMode="Password"></asp:TextBox>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Company Name" SortExpression="COMPANYNAME">
                                        <InsertItemTemplate>
                                            <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("COMPANYNAME") %>'></asp:TextBox>--%>
                                             <asp:DropDownList ID="CompanyNameDropDownList" runat="server" SelectedValue ='<%# Bind("COMPANYNAME") %>' DataSourceID="SqlDataSource1" DataTextField="COMPANYNAME" DataValueField="COMPANYNAME"> </asp:DropDownList>                                       
                                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [COMPANYNAME] FROM [COMPANY]"></asp:SqlDataSource>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>

                                    <asp:CommandField CancelText="" ShowInsertButton="True" />
                                </Fields>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                            </asp:DetailsView>
                            <!--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" InsertCommand="INSERT INTO USERPASS(USERID, CLIENTID, SALUTATION, NAME, EMAIL, PHONE, HANDPHONE, SKYPE, POSITION, SITEID, PASSWORD, USERGROUP, COMPANYNAME) VALUES (@USERID, @CLIENTID, @SALUTATION, @NAME, @EMAIL, @PHONE, @HANDPHONE, @SKYPE, @POSITION, @SITEID, @PASSWORD, @USERGROUP, @COMPANYNAME)" SelectCommand="SELECT USERID, SALUTATION, NAME, EMAIL, PHONE, HANDPHONE, SKYPE, POSITION, SITEID, USERGROUP, PASSWORD, COMPANYNAME FROM USERPASS" UpdateCommand="UPDATE USERPASS SET USERID = @USERID, SALUTATION = @SALUTATION, NAME = @NAME, EMAIL = @EMAIL, PHONE = @PHONE, HANDPHONE = @HANDPHONE, SKYPE = @SKYPE, POSITION = @POSITION, SITEID = @SITEID, PASSWORD = @PASSWORD, USERGROUP = @USERGROUP, COMPANYNAME = @COMPANYNAME WHERE (CLIENTID = @CLIENTID)">
                                <InsertParameters>
                                    <asp:Parameter Name="USERID" />
                                    <asp:Parameter Name="CLIENTID" />
                                    <asp:Parameter Name="SALUTATION" />
                                    <asp:Parameter Name="NAME" />
                                    <asp:Parameter Name="EMAIL" />
                                    <asp:Parameter Name="PHONE" />
                                    <asp:Parameter Name="HANDPHONE" />
                                    <asp:Parameter Name="SKYPE" />
                                    <asp:Parameter Name="POSITION" />
                                    <asp:Parameter Name="SITEID" />
                                    <asp:Parameter Name="PASSWORD" />
                                    <asp:Parameter Name="USERGROUP" />
                                    <asp:Parameter Name="COMPANYNAME" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="USERID" />
                                    <asp:Parameter Name="SALUTATION" />
                                    <asp:Parameter Name="NAME" />
                                    <asp:Parameter Name="EMAIL" />
                                    <asp:Parameter Name="PHONE" />
                                    <asp:Parameter Name="HANDPHONE" />
                                    <asp:Parameter Name="SKYPE" />
                                    <asp:Parameter Name="POSITION" />
                                    <asp:Parameter Name="SITEID" />
                                    <asp:Parameter Name="PASSWORD" />
                                    <asp:Parameter Name="USERGROUP" />
                                    <asp:Parameter Name="COMPANYNAME" />
                                    <asp:Parameter Name="CLIENTID" />
                                </UpdateParameters>
                            </asp:SqlDataSource>-->
                            <br />
                                        <asp:Label ID="UserCreatedLabel" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Candara" ForeColor="#3333CC" Text="User created succesfully!" Visible="False"></asp:Label>
                                        <span class="auto-style10">
                            <br />
                            <br />
                            Search For Client ID</span><br />
                            <br />
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;<asp:Button ID="Button1" runat="server" Text="Search" />
                            <br />
                            <br />
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="USERID" style="text-align: left">
                                <AlternatingItemTemplate>
                                    <li style="background-color: #FFFFFF;color: #284775;">USERID:
                                        <asp:Label ID="USERIDLabel" runat="server" Text='<%# Eval("USERID") %>' />
                                        <br />
                                        SALUTATION:
                                        <asp:Label ID="SALUTATIONLabel" runat="server" Text='<%# Eval("SALUTATION") %>' />
                                        <br />
                                        NAME:
                                        <asp:Label ID="NAMELabel" runat="server" Text='<%# Eval("NAME") %>' />
                                        <br />
                                        EMAIL:
                                        <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                                        <br />
                                        PHONE:
                                        <asp:Label ID="PHONELabel" runat="server" Text='<%# Eval("PHONE") %>' />
                                        <br />
                                        HANDPHONE:
                                        <asp:Label ID="HANDPHONELabel" runat="server" Text='<%# Eval("HANDPHONE") %>' />
                                        <br />
                                        SKYPE:
                                        <asp:Label ID="SKYPELabel" runat="server" Text='<%# Eval("SKYPE") %>' />
                                        <br />
                                        POSITION:
                                        <asp:Label ID="POSITIONLabel" runat="server" Text='<%# Eval("POSITION") %>' />
                                        <br />
                                        SITEID:
                                        <asp:Label ID="SITEIDLabel" runat="server" Text='<%# Eval("SITEID") %>' />
                                        <br />
                                        USERGROUP:
                                        <asp:Label ID="USERGROUPLabel" runat="server" Text='<%# Eval("USERGROUP") %>' />
                                        <br />
                                    </li>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <li style="background-color: #999999;">USERID:
                                        <asp:Label ID="USERIDLabel1" runat="server" Text='<%# Eval("USERID") %>' />
                                        <br />
                                        SALUTATION:
                                        <asp:TextBox ID="SALUTATIONTextBox" runat="server" Text='<%# Bind("SALUTATION") %>' />
                                        <br />
                                        NAME:
                                        <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
                                        <br />
                                        EMAIL:
                                        <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                                        <br />
                                        PHONE:
                                        <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' />
                                        <br />
                                        HANDPHONE:
                                        <asp:TextBox ID="HANDPHONETextBox" runat="server" Text='<%# Bind("HANDPHONE") %>' />
                                        <br />
                                        SKYPE:
                                        <asp:TextBox ID="SKYPETextBox" runat="server" Text='<%# Bind("SKYPE") %>' />
                                        <br />
                                        POSITION:
                                        <asp:TextBox ID="POSITIONTextBox" runat="server" Text='<%# Bind("POSITION") %>' />
                                        <br />
                                        SITEID:
                                        <asp:TextBox ID="SITEIDTextBox" runat="server" Text='<%# Bind("SITEID") %>' />
                                        <br />
                                        USERGROUP:
                                        <asp:TextBox ID="USERGROUPTextBox" runat="server" Text='<%# Bind("USERGROUP") %>' />
                                        <br />
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                    </li>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    No data was returned.
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <li style="">USERID:
                                        <asp:TextBox ID="USERIDTextBox" runat="server" Text='<%# Bind("USERID") %>' />
                                        <br />SALUTATION:
                                        <asp:TextBox ID="SALUTATIONTextBox" runat="server" Text='<%# Bind("SALUTATION") %>' />
                                        <br />NAME:
                                        <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
                                        <br />EMAIL:
                                        <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                                        <br />PHONE:
                                        <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' />
                                        <br />HANDPHONE:
                                        <asp:TextBox ID="HANDPHONETextBox" runat="server" Text='<%# Bind("HANDPHONE") %>' />
                                        <br />SKYPE:
                                        <asp:TextBox ID="SKYPETextBox" runat="server" Text='<%# Bind("SKYPE") %>' />
                                        <br />POSITION:
                                        <asp:TextBox ID="POSITIONTextBox" runat="server" Text='<%# Bind("POSITION") %>' />
                                        <br />SITEID:
                                        <asp:TextBox ID="SITEIDTextBox" runat="server" Text='<%# Bind("SITEID") %>' />
                                        <br />USERGROUP:
                                        <asp:TextBox ID="USERGROUPTextBox" runat="server" Text='<%# Bind("USERGROUP") %>' />
                                        <br />
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    </li>
                                </InsertItemTemplate>
                                <ItemSeparatorTemplate>
<br />
                                </ItemSeparatorTemplate>
                                <ItemTemplate>
                                    <li style="background-color: #E0FFFF;color: #333333;">USERID:
                                        <asp:Label ID="USERIDLabel" runat="server" Text='<%# Eval("USERID") %>' />
                                        <br />
                                        SALUTATION:
                                        <asp:Label ID="SALUTATIONLabel" runat="server" Text='<%# Eval("SALUTATION") %>' />
                                        <br />
                                        NAME:
                                        <asp:Label ID="NAMELabel" runat="server" Text='<%# Eval("NAME") %>' />
                                        <br />
                                        EMAIL:
                                        <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                                        <br />
                                        PHONE:
                                        <asp:Label ID="PHONELabel" runat="server" Text='<%# Eval("PHONE") %>' />
                                        <br />
                                        HANDPHONE:
                                        <asp:Label ID="HANDPHONELabel" runat="server" Text='<%# Eval("HANDPHONE") %>' />
                                        <br />
                                        SKYPE:
                                        <asp:Label ID="SKYPELabel" runat="server" Text='<%# Eval("SKYPE") %>' />
                                        <br />
                                        POSITION:
                                        <asp:Label ID="POSITIONLabel" runat="server" Text='<%# Eval("POSITION") %>' />
                                        <br />
                                        SITEID:
                                        <asp:Label ID="SITEIDLabel" runat="server" Text='<%# Eval("SITEID") %>' />
                                        <br />
                                        USERGROUP:
                                        <asp:Label ID="USERGROUPLabel" runat="server" Text='<%# Eval("USERGROUP") %>' />
                                        <br />
                                    </li>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <li runat="server" id="itemPlaceholder" />
                                    </ul>
                                    <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                            </Fields>
                                        </asp:DataPager>
                                    </div>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">USERID:
                                        <asp:Label ID="USERIDLabel" runat="server" Text='<%# Eval("USERID") %>' />
                                        <br />
                                        SALUTATION:
                                        <asp:Label ID="SALUTATIONLabel" runat="server" Text='<%# Eval("SALUTATION") %>' />
                                        <br />
                                        NAME:
                                        <asp:Label ID="NAMELabel" runat="server" Text='<%# Eval("NAME") %>' />
                                        <br />
                                        EMAIL:
                                        <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                                        <br />
                                        PHONE:
                                        <asp:Label ID="PHONELabel" runat="server" Text='<%# Eval("PHONE") %>' />
                                        <br />
                                        HANDPHONE:
                                        <asp:Label ID="HANDPHONELabel" runat="server" Text='<%# Eval("HANDPHONE") %>' />
                                        <br />
                                        SKYPE:
                                        <asp:Label ID="SKYPELabel" runat="server" Text='<%# Eval("SKYPE") %>' />
                                        <br />
                                        POSITION:
                                        <asp:Label ID="POSITIONLabel" runat="server" Text='<%# Eval("POSITION") %>' />
                                        <br />
                                        SITEID:
                                        <asp:Label ID="SITEIDLabel" runat="server" Text='<%# Eval("SITEID") %>' />
                                        <br />
                                        USERGROUP:
                                        <asp:Label ID="USERGROUPLabel" runat="server" Text='<%# Eval("USERGROUP") %>' />
                                        <br />
                                    </li>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [USERID], [SALUTATION], [NAME], [EMAIL], [PHONE], [HANDPHONE], [SKYPE], [POSITION], [SITEID], [USERGROUP] FROM [USERPASS] WHERE ([NAME] LIKE '%' + @NAME + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="NAME" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
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
