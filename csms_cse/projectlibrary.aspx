<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="projectlibrary.aspx.cs" Inherits="projectlibrary" %>

<%@ Register Src="~/BasicControls/wuc_projectlibrary.ascx" TagPrefix="uc1" TagName="wuc_projectlibrary" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:wuc_projectlibrary runat="server" ID="wuc_projectlibrary" />

</asp:Content>

