<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<%@ Register Src="~/BasicControls/wuc_changepassword.ascx" TagPrefix="uc1" TagName="wuc_changepassword" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <uc1:wuc_changepassword runat="server" ID="wuc_changepassword" />
</asp:Content>

