<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_serviceform.ascx.cs" Inherits="BasicControls_wuc_serviceform" %>
<style type="text/css">
    .style147 {}
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-decoration: underline;
    }
    .auto-style3 {
        text-align: left;
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
    .auto-style23 {}
</style>

<body style="text-align: left">
<article>
                <header class="auto-style4">
                        Service Form</header>
                <br />
                <table border="0" class="auto-style1">
                    <tr>
                        <td class="auto-style2" style="text-align: left">Section A : Service Request - Fill By Customer</td>
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
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            Contact Number :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            Description Of Service Request :
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox5" runat="server" Height="161px" Width="378px" BorderColor="#3366FF" TextMode="MultiLine"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Section B : Impact Analysis - Fill By CSE</td>
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
                            <br />
                            Estimated Start Date :
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            Estimated End Date :&nbsp;
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
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
                            <br />
                            <span class="auto-style2">Section C : Evaluation - Fill By Customer (Applicable for Chargeable Item)</span></td>
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
                        <td class="auto-style3">
                            <br />
                            Other Comments :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox12" runat="server" Height="16px" Width="238px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <br />
                            Customer&#39;s Reprensitive Name :
                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
                            Signature :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
                            Date :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Section D : Summary of Changes Done - Fill By CSE</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <br />
                            Actions Taken :&nbsp;
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox16" runat="server" BorderColor="#3366FF" Height="156px" TextMode="MultiLine" Width="371px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                   <table border="1" class="auto-style1">
                       <tr>
                           <td class="auto-style15">Programmes/Document<br />
&nbsp;Name &amp; No :</td>
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
                            <asp:TextBox ID="TextBox48" runat="server" BorderColor="#3366FF" Height="139px" TextMode="MultiLine" Width="382px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style23">Name:
                            <asp:TextBox ID="TextBox49" runat="server"></asp:TextBox>
                        </td>
                        <td>Signature :<asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>
                        </td>
                        <td>Date :
                            <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3">
                            <br />
                            <span class="auto-style2">Section E : Acceptance - Fill by Customer To Close The Change Request</span></td>
                    </tr>
                    <tr>
                        <td class="auto-style23" colspan="3">
                            <br />
                            Completion Date :
                            <asp:TextBox ID="TextBox55" runat="server"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            Name :
                            <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <br />
                            Signature :
                            <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <br />
                            Date :
                            <asp:TextBox ID="TextBox54" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td>
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                   </center>
                   </center>
                   </center>
                   </center>
                   </center>
                   </center>
                   </center>
                 <footer><h5 class="auto-style4">Welcome To Service Form<h5></footer>
            </article>

