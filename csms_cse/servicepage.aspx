<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="servicepage.aspx.cs" Inherits="servicepage" %>

<%@ Register Src="~/BasicControls/wuc_servicepage.ascx" TagPrefix="uc1" TagName="wuc_servicepage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <uc1:wuc_servicepage runat="server" ID="wuc_serviceform" />
</asp:Content>

