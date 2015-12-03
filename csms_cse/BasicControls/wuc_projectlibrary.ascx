<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_projectlibrary.ascx.cs" Inherits="BasicControls_wuc_projectlibrary" %>
<style type="text/css">

    .auto-style5 {        width: 739px;
    }
    .auto-style6 {
        color: #3366FF;
    }
    </style>

<body style="text-align: center">
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
                                    <asp:BoundField DataField="PROJECTCODE" HeaderText="Project Code" SortExpression="PROJECTCODE" ReadOnly="True" />
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
                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [NO], [PROJECTCODE], [COMPANYNAME], [PROJECTNAME], [PROJECTPHASE], [PROJECTMANAGER], [STARTDATE] FROM [PROJECT]"></asp:SqlDataSource>
                            <br />
                            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Search Through Project Code"></asp:Label>
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="155px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Search" />
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [PROJECT] WHERE ([PROJECTCODE] LIKE '%' + @PROJECTCODE + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="PROJECTCODE" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource3" DataKeyNames="PROJECTCODE" style="font-size: small">
                                <AlternatingItemTemplate>
                                    <li style="background-color: #FFFFFF;color: #284775;">NO:
                                        <asp:Label ID="NOLabel" runat="server" Text='<%# Eval("NO") %>' />
                                        <br />
                                        PROJECTCODE:
                                        <asp:Label ID="PROJECTCODELabel" runat="server" Text='<%# Eval("PROJECTCODE") %>' />
                                        <br />
                                        COMPANYNAME:
                                        <asp:Label ID="COMPANYNAMELabel" runat="server" Text='<%# Eval("COMPANYNAME") %>' />
                                        <br />
                                        CLIENTID:
                                        <asp:Label ID="CLIENTIDLabel" runat="server" Text='<%# Eval("CLIENTID") %>' />
                                        <br />
                                        SITEID:
                                        <asp:Label ID="SITEIDLabel" runat="server" Text='<%# Eval("SITEID") %>' />
                                        <br />
                                        PROJECTNAME:
                                        <asp:Label ID="PROJECTNAMELabel" runat="server" Text='<%# Eval("PROJECTNAME") %>' />
                                        <br />
                                        PROJECTTYPE:
                                        <asp:Label ID="PROJECTTYPELabel" runat="server" Text='<%# Eval("PROJECTTYPE") %>' />
                                        <br />
                                        SYSTEMID:
                                        <asp:Label ID="SYSTEMIDLabel" runat="server" Text='<%# Eval("SYSTEMID") %>' />
                                        <br />
                                        SALESCODE:
                                        <asp:Label ID="SALESCODELabel" runat="server" Text='<%# Eval("SALESCODE") %>' />
                                        <br />
                                        STARTDATE:
                                        <asp:Label ID="STARTDATELabel" runat="server" Text='<%# Eval("STARTDATE") %>' />
                                        <br />
                                        ENDDATE:
                                        <asp:Label ID="ENDDATELabel" runat="server" Text='<%# Eval("ENDDATE") %>' />
                                        <br />
                                        WARRANTYENDDATE:
                                        <asp:Label ID="WARRANTYENDDATELabel" runat="server" Text='<%# Eval("WARRANTYENDDATE") %>' />
                                        <br />
                                        CONTRACTCURRENCY:
                                        <asp:Label ID="CONTRACTCURRENCYLabel" runat="server" Text='<%# Eval("CONTRACTCURRENCY") %>' />
                                        <br />
                                        CONTRACTVALUE:
                                        <asp:Label ID="CONTRACTVALUELabel" runat="server" Text='<%# Eval("CONTRACTVALUE") %>' />
                                        <br />
                                        REMARKS:
                                        <asp:Label ID="REMARKSLabel" runat="server" Text='<%# Eval("REMARKS") %>' />
                                        <br />
                                        PROJECTPHASE:
                                        <asp:Label ID="PROJECTPHASELabel" runat="server" Text='<%# Eval("PROJECTPHASE") %>' />
                                        <br />
                                        PROJECTMANAGER:
                                        <asp:Label ID="PROJECTMANAGERLabel" runat="server" Text='<%# Eval("PROJECTMANAGER") %>' />
                                        <br />
                                    </li>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <li style="background-color: #999999;">NO:
                                        <asp:Label ID="NOLabel1" runat="server" Text='<%# Eval("NO") %>' />
                                        <br />
                                        PROJECTCODE:
                                        <asp:Label ID="PROJECTCODELabel1" runat="server" Text='<%# Eval("PROJECTCODE") %>' />
                                        <br />
                                        COMPANYNAME:
                                        <asp:TextBox ID="COMPANYNAMETextBox" runat="server" Text='<%# Bind("COMPANYNAME") %>' />
                                        <br />
                                        CLIENTID:
                                        <asp:TextBox ID="CLIENTIDTextBox" runat="server" Text='<%# Bind("CLIENTID") %>' />
                                        <br />
                                        SITEID:
                                        <asp:TextBox ID="SITEIDTextBox" runat="server" Text='<%# Bind("SITEID") %>' />
                                        <br />
                                        PROJECTNAME:
                                        <asp:TextBox ID="PROJECTNAMETextBox" runat="server" Text='<%# Bind("PROJECTNAME") %>' />
                                        <br />
                                        PROJECTTYPE:
                                        <asp:TextBox ID="PROJECTTYPETextBox" runat="server" Text='<%# Bind("PROJECTTYPE") %>' />
                                        <br />
                                        SYSTEMID:
                                        <asp:TextBox ID="SYSTEMIDTextBox" runat="server" Text='<%# Bind("SYSTEMID") %>' />
                                        <br />
                                        SALESCODE:
                                        <asp:TextBox ID="SALESCODETextBox" runat="server" Text='<%# Bind("SALESCODE") %>' />
                                        <br />
                                        STARTDATE:
                                        <asp:TextBox ID="STARTDATETextBox" runat="server" Text='<%# Bind("STARTDATE") %>' />
                                        <br />
                                        ENDDATE:
                                        <asp:TextBox ID="ENDDATETextBox" runat="server" Text='<%# Bind("ENDDATE") %>' />
                                        <br />
                                        WARRANTYENDDATE:
                                        <asp:TextBox ID="WARRANTYENDDATETextBox" runat="server" Text='<%# Bind("WARRANTYENDDATE") %>' />
                                        <br />
                                        CONTRACTCURRENCY:
                                        <asp:TextBox ID="CONTRACTCURRENCYTextBox" runat="server" Text='<%# Bind("CONTRACTCURRENCY") %>' />
                                        <br />
                                        CONTRACTVALUE:
                                        <asp:TextBox ID="CONTRACTVALUETextBox" runat="server" Text='<%# Bind("CONTRACTVALUE") %>' />
                                        <br />
                                        REMARKS:
                                        <asp:TextBox ID="REMARKSTextBox" runat="server" Text='<%# Bind("REMARKS") %>' />
                                        <br />
                                        PROJECTPHASE:
                                        <asp:TextBox ID="PROJECTPHASETextBox" runat="server" Text='<%# Bind("PROJECTPHASE") %>' />
                                        <br />
                                        PROJECTMANAGER:
                                        <asp:TextBox ID="PROJECTMANAGERTextBox" runat="server" Text='<%# Bind("PROJECTMANAGER") %>' />
                                        <br />
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                    </li>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    No data was returned.
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <li style="">PROJECTCODE:
                                        <asp:TextBox ID="PROJECTCODETextBox" runat="server" Text='<%# Bind("PROJECTCODE") %>' />
                                        <br />
                                        COMPANYNAME:
                                        <asp:TextBox ID="COMPANYNAMETextBox" runat="server" Text='<%# Bind("COMPANYNAME") %>' />
                                        <br />CLIENTID:
                                        <asp:TextBox ID="CLIENTIDTextBox" runat="server" Text='<%# Bind("CLIENTID") %>' />
                                        <br />SITEID:
                                        <asp:TextBox ID="SITEIDTextBox" runat="server" Text='<%# Bind("SITEID") %>' />
                                        <br />PROJECTNAME:
                                        <asp:TextBox ID="PROJECTNAMETextBox" runat="server" Text='<%# Bind("PROJECTNAME") %>' />
                                        <br />PROJECTTYPE:
                                        <asp:TextBox ID="PROJECTTYPETextBox" runat="server" Text='<%# Bind("PROJECTTYPE") %>' />
                                        <br />SYSTEMID:
                                        <asp:TextBox ID="SYSTEMIDTextBox" runat="server" Text='<%# Bind("SYSTEMID") %>' />
                                        <br />SALESCODE:
                                        <asp:TextBox ID="SALESCODETextBox" runat="server" Text='<%# Bind("SALESCODE") %>' />
                                        <br />
                                        STARTDATE:
                                        <asp:TextBox ID="STARTDATETextBox" runat="server" Text='<%# Bind("STARTDATE") %>' />
                                        <br />
                                        ENDDATE:
                                        <asp:TextBox ID="ENDDATETextBox" runat="server" Text='<%# Bind("ENDDATE") %>' />
                                        <br />
                                        WARRANTYENDDATE:
                                        <asp:TextBox ID="WARRANTYENDDATETextBox" runat="server" Text='<%# Bind("WARRANTYENDDATE") %>' />
                                        <br />
                                        CONTRACTCURRENCY:
                                        <asp:TextBox ID="CONTRACTCURRENCYTextBox" runat="server" Text='<%# Bind("CONTRACTCURRENCY") %>' />
                                        <br />
                                        CONTRACTVALUE:
                                        <asp:TextBox ID="CONTRACTVALUETextBox" runat="server" Text='<%# Bind("CONTRACTVALUE") %>' />
                                        <br />
                                        REMARKS:
                                        <asp:TextBox ID="REMARKSTextBox" runat="server" Text='<%# Bind("REMARKS") %>' />
                                        <br />
                                        PROJECTPHASE:
                                        <asp:TextBox ID="PROJECTPHASETextBox" runat="server" Text='<%# Bind("PROJECTPHASE") %>' />
                                        <br />
                                        PROJECTMANAGER:
                                        <asp:TextBox ID="PROJECTMANAGERTextBox" runat="server" Text='<%# Bind("PROJECTMANAGER") %>' />
                                        <br />
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    </li>
                                </InsertItemTemplate>
                                <ItemSeparatorTemplate>
<br />
                                </ItemSeparatorTemplate>
                                <ItemTemplate>
                                    <li style="background-color: #E0FFFF;color: #333333;">NO:
                                        <asp:Label ID="NOLabel" runat="server" Text='<%# Eval("NO") %>' />
                                        <br />
                                        PROJECTCODE:
                                        <asp:Label ID="PROJECTCODELabel" runat="server" Text='<%# Eval("PROJECTCODE") %>' />
                                        <br />
                                        COMPANYNAME:
                                        <asp:Label ID="COMPANYNAMELabel" runat="server" Text='<%# Eval("COMPANYNAME") %>' />
                                        <br />
                                        CLIENTID:
                                        <asp:Label ID="CLIENTIDLabel" runat="server" Text='<%# Eval("CLIENTID") %>' />
                                        <br />
                                        SITEID:
                                        <asp:Label ID="SITEIDLabel" runat="server" Text='<%# Eval("SITEID") %>' />
                                        <br />
                                        PROJECTNAME:
                                        <asp:Label ID="PROJECTNAMELabel" runat="server" Text='<%# Eval("PROJECTNAME") %>' />
                                        <br />
                                        PROJECTTYPE:
                                        <asp:Label ID="PROJECTTYPELabel" runat="server" Text='<%# Eval("PROJECTTYPE") %>' />
                                        <br />
                                        SYSTEMID:
                                        <asp:Label ID="SYSTEMIDLabel" runat="server" Text='<%# Eval("SYSTEMID") %>' />
                                        <br />
                                        SALESCODE:
                                        <asp:Label ID="SALESCODELabel" runat="server" Text='<%# Eval("SALESCODE") %>' />
                                        <br />
                                        STARTDATE:
                                        <asp:Label ID="STARTDATELabel" runat="server" Text='<%# Eval("STARTDATE") %>' />
                                        <br />
                                        ENDDATE:
                                        <asp:Label ID="ENDDATELabel" runat="server" Text='<%# Eval("ENDDATE") %>' />
                                        <br />
                                        WARRANTYENDDATE:
                                        <asp:Label ID="WARRANTYENDDATELabel" runat="server" Text='<%# Eval("WARRANTYENDDATE") %>' />
                                        <br />
                                        CONTRACTCURRENCY:
                                        <asp:Label ID="CONTRACTCURRENCYLabel" runat="server" Text='<%# Eval("CONTRACTCURRENCY") %>' />
                                        <br />
                                        CONTRACTVALUE:
                                        <asp:Label ID="CONTRACTVALUELabel" runat="server" Text='<%# Eval("CONTRACTVALUE") %>' />
                                        <br />
                                        REMARKS:
                                        <asp:Label ID="REMARKSLabel" runat="server" Text='<%# Eval("REMARKS") %>' />
                                        <br />
                                        PROJECTPHASE:
                                        <asp:Label ID="PROJECTPHASELabel" runat="server" Text='<%# Eval("PROJECTPHASE") %>' />
                                        <br />
                                        PROJECTMANAGER:
                                        <asp:Label ID="PROJECTMANAGERLabel" runat="server" Text='<%# Eval("PROJECTMANAGER") %>' />
                                        <br />
                                    </li>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <li runat="server" id="itemPlaceholder" />
                                    </ul>
                                    <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                                    </div>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">NO:
                                        <asp:Label ID="NOLabel" runat="server" Text='<%# Eval("NO") %>' />
                                        <br />
                                        PROJECTCODE:
                                        <asp:Label ID="PROJECTCODELabel" runat="server" Text='<%# Eval("PROJECTCODE") %>' />
                                        <br />
                                        COMPANYNAME:
                                        <asp:Label ID="COMPANYNAMELabel" runat="server" Text='<%# Eval("COMPANYNAME") %>' />
                                        <br />
                                        CLIENTID:
                                        <asp:Label ID="CLIENTIDLabel" runat="server" Text='<%# Eval("CLIENTID") %>' />
                                        <br />
                                        SITEID:
                                        <asp:Label ID="SITEIDLabel" runat="server" Text='<%# Eval("SITEID") %>' />
                                        <br />
                                        PROJECTNAME:
                                        <asp:Label ID="PROJECTNAMELabel" runat="server" Text='<%# Eval("PROJECTNAME") %>' />
                                        <br />
                                        PROJECTTYPE:
                                        <asp:Label ID="PROJECTTYPELabel" runat="server" Text='<%# Eval("PROJECTTYPE") %>' />
                                        <br />
                                        SYSTEMID:
                                        <asp:Label ID="SYSTEMIDLabel" runat="server" Text='<%# Eval("SYSTEMID") %>' />
                                        <br />
                                        SALESCODE:
                                        <asp:Label ID="SALESCODELabel" runat="server" Text='<%# Eval("SALESCODE") %>' />
                                        <br />
                                        STARTDATE:
                                        <asp:Label ID="STARTDATELabel" runat="server" Text='<%# Eval("STARTDATE") %>' />
                                        <br />
                                        ENDDATE:
                                        <asp:Label ID="ENDDATELabel" runat="server" Text='<%# Eval("ENDDATE") %>' />
                                        <br />
                                        WARRANTYENDDATE:
                                        <asp:Label ID="WARRANTYENDDATELabel" runat="server" Text='<%# Eval("WARRANTYENDDATE") %>' />
                                        <br />
                                        CONTRACTCURRENCY:
                                        <asp:Label ID="CONTRACTCURRENCYLabel" runat="server" Text='<%# Eval("CONTRACTCURRENCY") %>' />
                                        <br />
                                        CONTRACTVALUE:
                                        <asp:Label ID="CONTRACTVALUELabel" runat="server" Text='<%# Eval("CONTRACTVALUE") %>' />
                                        <br />
                                        REMARKS:
                                        <asp:Label ID="REMARKSLabel" runat="server" Text='<%# Eval("REMARKS") %>' />
                                        <br />
                                        PROJECTPHASE:
                                        <asp:Label ID="PROJECTPHASELabel" runat="server" Text='<%# Eval("PROJECTPHASE") %>' />
                                        <br />
                                        PROJECTMANAGER:
                                        <asp:Label ID="PROJECTMANAGERLabel" runat="server" Text='<%# Eval("PROJECTMANAGER") %>' />
                                        <br />
                                    </li>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <span class="auto-style6">
                            <br />
                            <br />
                            <br />
                            For Editting &amp; New Entry<br />
                            <br />
                            * Project Phase - FDS, Implementation, FAT, SAT, Documentation, Warranty, Mainrtainence &amp; Per Call*<br />
                            </span>
                            <br />
                            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" Height="16px" Width="811px" DataKeyNames="PROJECTCODE" style="text-align: left; font-size: small" HorizontalAlign="Center">
                                <AlternatingRowStyle BackColor="White" />
                                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                <Fields>
                                    <asp:BoundField DataField="NO" HeaderText="Number" SortExpression="NO" InsertVisible="False" ReadOnly="True" />
                                    <asp:BoundField DataField="PROJECTCODE" HeaderText="Project Code" SortExpression="PROJECTCODE" ReadOnly="True" />
                                    <asp:TemplateField HeaderText="Company Name" SortExpression="COMPANYNAME">
                                        <EditItemTemplate>
                                           <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("COMPANYNAME") %>'></asp:TextBox>--%>
                                        <asp:DropDownList ID="CompanyNameDropDownList" runat="server" SelectedValue ='<%# Bind("COMPANYNAME") %>' DataSourceID="SqlDataSource1" DataTextField="COMPANYNAME" DataValueField="COMPANYNAME"> </asp:DropDownList>                                       
                                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [COMPANYNAME] FROM [COMPANY]"></asp:SqlDataSource>
                                             </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("COMPANYNAME") %>'></asp:TextBox>--%>
                                              <asp:DropDownList ID="CompanyNameDropDownList" runat="server" SelectedValue ='<%# Bind("COMPANYNAME") %>' DataSourceID="SqlDataSource1" DataTextField="COMPANYNAME" DataValueField="COMPANYNAME"> </asp:DropDownList>                                       
                                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [COMPANYNAME] FROM [COMPANY]"></asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("COMPANYNAME") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="CLIENTID" HeaderText="Client ID" SortExpression="CLIENTID" ReadOnly="True" />
                                    <asp:BoundField DataField="SITEID" HeaderText="Site ID" SortExpression="SITEID" />
                                    <asp:BoundField DataField="PROJECTNAME" HeaderText="Project Name" SortExpression="PROJECTNAME" />
                                    <asp:TemplateField HeaderText="Project Type" SortExpression="PROJECTTYPE">
                                        <EditItemTemplate>
                                            <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PROJECTTYPE") %>'></asp:TextBox>--%>
                                            <asp:DropDownList ID="ProjectTypeDropDownList" runat="server"  AutoPostBack="true" Enabled ="true" >
                                                 <asp:ListItem Value="LIMS"> LIMS </asp:ListItem>
                                                <asp:ListItem Value="PIMS"> PIMS </asp:ListItem>
                                                <asp:ListItem Value="DRS"> DRS </asp:ListItem>
                                            </asp:DropDownList>
                                             </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PROJECTTYPE") %>'></asp:TextBox>--%>
                                            <asp:DropDownList ID="ProjectTypeDropDownList" runat="server"  AutoPostBack="true" Enabled ="true" >
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
                                    <asp:TemplateField HeaderText="Start Date" SortExpression="STARTDATE">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("STARTDATE") %>'></asp:TextBox>
                                            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                            <asp:ImageButton ID="ImageButton1" runat="server" />
                                            <asp:Image ID="Image1" runat="server" />
                                        </EditItemTemplate>
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
                                        <EditItemTemplate>
                                            <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PROJECTPHASE") %>'></asp:TextBox>--%>
                                            <asp:DropDownList ID="ProjectPhaseDropDownList" runat="server"  AutoPostBack="true" Enabled ="true" >
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
                                        <InsertItemTemplate>
                                            <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PROJECTPHASE") %>'></asp:TextBox>--%>
                                            <asp:DropDownList ID="ProjectPhaseDropDownList" runat="server"  AutoPostBack="true" Enabled ="true" >
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
                                    <asp:BoundField DataField="PROJECTMANAGER" HeaderText="Project Manager" SortExpression="PROJECTMANAGER" />
                                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" >
                                    <FooterStyle VerticalAlign="Middle" />
                                    </asp:CommandField>
                                </Fields>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                            </asp:DetailsView>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" InsertCommand="INSERT INTO PROJECT(NO, PROJECTCODE, COMPANYNAME, PROJECTNAME, PROJECTPHASE, PROJECTMANAGER, STARTDATE, ENDDATE, WARRANTYENDDATE, CONTRACTCURRENCY, CONTRACTVALUE, REMARKS, SALESCODE, SYSTEMID, PROJECTTYPE, SITEID, CLIENTID) VALUES (@NO, @PROJECTCODE, @COMPANYNAME, @PROJECTNAME, @PROJECTPHASE, @PROJECTMANAGER, @STARTDATE, @ENDDATE, @WARRANTYENDDATE, @CONTRACTCURRENCY, @CONTRACTVALUE, @REMARKS, @SALESCODE, @SYSTEMID, @PROJECTTYPE, @SITEID, 1)" SelectCommand="SELECT PROJECT.* FROM PROJECT" UpdateCommand="UPDATE PROJECT SET NO = @NO, PROJECTCODE = @PROJECTCODE, COMPANYNAME = @COMPANYNAME, PROJECTNAME = @PROJECTNAME, PROJECTPHASE = @PROJECTPHASE, PROJECTMANAGER = @PROJECTMANAGER, STARTDATE = @STARTDATE, ENDDATE = @ENDDATE, WARRANTYENDDATE = @WARRANTYENDDATE, CONTRACTCURRENCY = @CONTRACTCURRENCY, CONTRACTVALUE = @CONTRACTVALUE, REMARKS = @REMARKS, SALESCODE = @SALESCODE, SYSTEMID = @SYSTEMID, PROJECTTYPE = @PROJECTTYPE, SITEID = @SITEID WHERE (CLIENTID = @CLIENTID)">
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
                                    <asp:Parameter Name="CLIENTID" />
                                </InsertParameters>
                                <UpdateParameters>
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
                                    <asp:Parameter Name="CLIENTID" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
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
                <footer><h5>All data cannot be deleted. Please add data carefully. </h5></footer>
            </article>
