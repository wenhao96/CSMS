<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="companyinformation.aspx.cs" Inherits="companyinformartion" %>

<%@ Register Src="~/BasicControls/wuc_companyinformation.ascx" TagPrefix="uc1" TagName="wuc_companyinformation" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <uc1:wuc_companyinformation runat="server" ID="wuc_companyinformation" />
</asp:Content>

