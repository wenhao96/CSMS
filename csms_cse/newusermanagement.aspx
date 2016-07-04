<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newusermanagement.aspx.cs" Inherits="newusermanagement" %>

<%@ Register Src="~/BasicControls/wuc_newusermanagement.ascx" TagPrefix="uc1" TagName="wuc_newusermanagement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <uc1:wuc_newusermanagement runat="server" ID="wuc_newusermanagement" />
</asp:Content>

