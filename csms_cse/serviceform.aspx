<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="serviceform.aspx.cs" Inherits="serviceform" %>

<%@ Register Src="~/BasicControls/wuc_serviceform.ascx" TagPrefix="uc1" TagName="wuc_serviceform" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <uc1:wuc_serviceform runat="server" ID="wuc_serviceform" />
</asp:Content>

