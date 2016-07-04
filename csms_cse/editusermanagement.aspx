<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editusermanagement.aspx.cs" Inherits="editusermanagement" %>

<%@ Register Src="~/BasicControls/wuc_editusermanagement.ascx" TagPrefix="uc1" TagName="wuc_editusermanagement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <uc1:wuc_editusermanagement runat="server" ID="wuc_editusermanagement" />
</asp:Content>

