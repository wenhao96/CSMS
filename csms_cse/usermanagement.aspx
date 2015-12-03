<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="usermanagement.aspx.cs" Inherits="usermanagement" %>

<%@ Register Src="~/BasicControls/wuc_usermanagement.ascx" TagPrefix="uc1" TagName="wuc_usermanagement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <uc1:wuc_usermanagement runat="server" ID="wuc_usermanagement" />
</asp:Content>

