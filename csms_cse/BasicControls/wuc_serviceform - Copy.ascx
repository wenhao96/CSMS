<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_serviceform - Copy.ascx.cs" Inherits="BasicControls_wuc_serviceform" %>
<style type="text/css">
    .style147 {}
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
    }
    .auto-style4 {
        text-align: center;
    }
    .auto-style5 {
        text-align: left;
    }
    .auto-style6 {
        text-align: left;
        text-decoration: underline;
    }
    .auto-style11 {
        width: 271px;
        height: 29px;
    }
    .auto-style12 {
        width: 191px;
        height: 29px;
    }
    .auto-style13 {
        width: 166px;
        height: 29px;
    }
    .auto-style14 {
        width: 150px;
        height: 29px;
    }
    .auto-style15 {
        width: 271px;
        height: 42px;
    }
    .auto-style16 {
        width: 191px;
        height: 42px;
    }
    .auto-style17 {
        width: 166px;
        height: 42px;
    }
    .auto-style18 {
        width: 150px;
        height: 42px;
    }
    .auto-style19 {
        width: 271px;
        height: 32px;
    }
    .auto-style20 {
        width: 191px;
        height: 32px;
    }
    .auto-style21 {
        width: 166px;
        height: 32px;
    }
    .auto-style22 {
        width: 150px;
        height: 32px;
    }
    .auto-style24 {
        width: 300px;
        text-align: center;
    }
    .auto-style25 {
        text-decoration: underline;
        font-size: x-large;
    }
    .auto-style26 {
        font-size: x-large;
    }
    .auto-style27 {
        height: 251px;
    }
    .auto-style28 {
        height: 102px;
    }
</style>

<body style="text-align: left">
<article>
                <header class="auto-style4">
                        Service Form</header>
                <br />
                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style25" style="text-align: left"><strong>Section A : Service Request - Fill By Customer</strong></td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            Requested By :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            Company &amp; Department :
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            Date &amp; Time :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Update" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            Contact Number :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem Value="Value 1" Text="Value +65">+65</asp:ListItem>
                                <asp:ListItem Value="Value 2" Text="Value +66">+66</asp:ListItem>
                                <asp:ListItem Value="Value 3" Text="Value +1800">+1800</asp:ListItem>
                                <asp:ListItem Value="Value 4" Text="Value +13">+13</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            Description Of Service Request :
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox5" runat="server" Height="160px" Width="420px" BorderColor="#3366FF" TextMode="MultiLine"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            <strong><span class="auto-style26">Section B : Impact Analysis - Fill By CSE</span></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <br />
                            Project Code &amp; Name :&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <br />
                            Date &amp; Time Responded :
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Update" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <br />
                            Project Phase :
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Warranty" />
&nbsp;<asp:CheckBox ID="CheckBox2" runat="server" Text="Maintainence" />
&nbsp;<asp:CheckBox ID="CheckBox3" runat="server" Text="Per Call (No Contract)" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <br />
                            Analysis (Person assigned, Schedule Impact, Estimated Start Date &amp; End Date etc) :<br />
                            <br />
                            Person Assigned :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            <br />
                            Estimated Start Date :
                            <asp:TextBox ID="TextBox9" runat="server" ReadOnly="True"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/imgs/calendar.png" Width="28px" OnClick="ImageButton1_Click1" />&nbsp;&nbsp;&nbsp;
                            <asp:Calendar ID="Calendar4" runat="server" BackColor="White" BorderColor="#999999" CellPadding="0" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="16px" OnSelectionChanged="Calendar4_SelectionChanged" Width="199px" Visible="False">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                            <br />
                            Estimated End Date :&nbsp;
                            <asp:TextBox ID="TextBox10" runat="server" ReadOnly="True"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="27px" ImageUrl="~/imgs/calendar.png" OnClick="ImageButton2_Click" Width="28px" />
                            <asp:Calendar ID="Calendar3" runat="server" BackColor="White" BorderColor="#999999" CellPadding="0" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="16px" Width="199px" OnSelectionChanged="Calendar3_SelectionChanged1" Visible="False">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <br />
                            (Applicable For Changable Item)<br />
                            Estimated Man Effort Required (Man-days, Rate, Amount etc) :<br />
                            <br />
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <strong>
                            <br class="auto-style26" />
                            </strong>
                            <span class="auto-style25"><strong>Section C : Evaluation - Fill By Customer (Applicable for Chargeable Item)</strong></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <br />
                            <asp:CheckBox ID="CheckBox4" runat="server" Text="Accepted" />
&nbsp;<asp:CheckBox ID="CheckBox5" runat="server" Text="Withdrawn" />
&nbsp;<asp:CheckBox ID="CheckBox6" runat="server" Text="Keep In View TIll __________" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">
                            <br />
                            Other Comments :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox12" runat="server" Height="82px" Width="238px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27">
                            <br />
                            Customer&#39;s Reprensitive Name :&nbsp;
                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
                            Signature :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
&nbsp;&nbsp;<br />
                            Date :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton5" runat="server" Height="27px" ImageUrl="~/imgs/calendar.png" Width="28px" OnClick="ImageButton5_Click" />
                            <asp:Calendar ID="Calendar6" runat="server" BackColor="White" BorderColor="#999999" CellPadding="0" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="16px" OnSelectionChanged="Calendar6_SelectionChanged" style="text-align: left" Width="200px" Visible="False">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <strong>
                            <br class="auto-style26" />
                            </strong><span class="auto-style26"><strong>Section D : Summary of Changes Done - Fill By CSE</strong></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <br />
                            Actions Taken :&nbsp;
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox16" runat="server" BorderColor="#3366FF" Height="160px" TextMode="MultiLine" Width="420px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                   <table border="1" class="auto-style1">
                       <tr>
                           <td class="auto-style15">Programmes/Document&nbsp;(Name &amp; No) :</td>
                           <td class="auto-style16">Version &amp; Released Date :</td>
                           <td class="auto-style17">Old</td>
                           <td class="auto-style18">New</td>
                       </tr>
                       <tr>
                           <td class="auto-style19">
                               <asp:TextBox ID="TextBox17" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                           <td class="auto-style20">
                               <asp:TextBox ID="TextBox39" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                           <td class="auto-style21">
                               <asp:TextBox ID="TextBox40" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                           <td class="auto-style22">
                               <asp:TextBox ID="TextBox44" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style11">
                               <asp:TextBox ID="TextBox33" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                           <td class="auto-style12">
                               <asp:TextBox ID="TextBox38" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                           <td class="auto-style13">
                               <asp:TextBox ID="TextBox41" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                           <td class="auto-style14">
                               <asp:TextBox ID="TextBox45" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style11">
                               <asp:TextBox ID="TextBox34" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                           <td class="auto-style12">
                               <asp:TextBox ID="TextBox37" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                           <td class="auto-style13">
                               <asp:TextBox ID="TextBox42" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                           <td class="auto-style14">
                               <asp:TextBox ID="TextBox46" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style11">
                               <asp:TextBox ID="TextBox35" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                           <td class="auto-style12">
                               <asp:TextBox ID="TextBox36" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                           <td class="auto-style13">
                               <asp:TextBox ID="TextBox43" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                           <td class="auto-style14">
                               <asp:TextBox ID="TextBox47" runat="server" Height="16px" Width="86px"></asp:TextBox>
                           </td>
                       </tr>
                </table>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <br />
                            Configuration Record Updated ? | Yes | No | Why ?<br />
                            <br />
                            <asp:TextBox ID="TextBox48" runat="server" BorderColor="#3366FF" Height="160px" TextMode="MultiLine" Width="420px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style24">Name:
                            <asp:TextBox ID="TextBox49" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style24">Signature :<asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style24">Date :
                            <asp:TextBox ID="TextBox51" runat="server" ReadOnly="True"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton4" runat="server" Height="27px" ImageUrl="~/imgs/calendar.png" OnClick="ImageButton4_Click" Width="28px" />
                            <asp:Calendar ID="Calendar5" runat="server" BackColor="White" BorderColor="#999999" CellPadding="0" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="16px" OnSelectionChanged="Calendar5_SelectionChanged" Visible="False" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3">
                            <strong>
                            <br class="auto-style26" />
                            </strong>
                            <span class="auto-style25"><strong>Section E : Acceptance - Fill by Customer To Close The Change Request</strong></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style24">
                            <br />
                            Name :
                            <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style24">
                            <br />
                            Signature :
                            <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style24">
                            <br />
                            Date :
                            <asp:TextBox ID="TextBox54" runat="server" ReadOnly="True"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="27px" ImageUrl="~/imgs/calendar.png" OnClick="ImageButton3_Click" Width="28px" />
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="0" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="16px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24">&nbsp;</td>
                        <td class="auto-style24">
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                        </td>
                        <td class="auto-style24">&nbsp;</td>
                    </tr>
                </table>
                   </center>
                   </center>
                   </center>
                   </center>
                   </center>
                   </center>
                   </center>
                 <footer><h5 class="auto-style4">Remember to fill in the blanks <h5></footer>
            </article>

