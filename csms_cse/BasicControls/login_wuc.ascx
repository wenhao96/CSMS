<%@ Control Language="C#" AutoEventWireup="true" CodeFile="login_wuc.ascx.cs" Inherits="BasicControls_login_wuc" %>
<style type="text/css">
    .auto-style1 {
        width: 595px;
    }
    .auto-style4 {
        width: 171px;
        text-align: left;
    }
    .auto-style5 {
        width: 73px;
    }
    .auto-style7 {
        width: 206px;
    }
    .auto-style9 {
        width: 210px;
        text-align: center;
    }
    .auto-style10 {
        font-weight: normal;
    }
    .auto-style11 {
        width: 171px;
        text-align: center;
    }
</style>
<body style="text-align: center">
<article>
                <header>
                        Login
                </header>
                <table>
                    <tr>
                        <td class="auto-style5">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="lblUsername" runat="server" Text="Username :"></asp:Label>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:TextBox ID="UsernameText" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
               <center>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="lblPassword" runat="server" Text="Password :"></asp:Label>
                                    </td>
               <center>
                                    <td class="auto-style4">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
               <center>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:CheckBox ID="chkRem" runat="server" Text="Remember Me" style="text-align: center" />
                                    </td>
               <center>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
               <center>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
               <center>
                                    <td class="auto-style4">
                                        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="82px" OnClick="btnLogin_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td> 
               <center> 
                        <td class="auto-style7">
                            <br />
                            &nbsp;<img src="../imgs/images.jpg" width="60" height="100" /></td>
                    </tr>
                </table>
                   </center>
                   </center>
                   </center>
                   </center>
                   </center>
                   </center>
                   </center>
                <footer><h5 class="auto-style10"><strong>Welcome To CSMS Database</strong></h5></footer>
            </article>