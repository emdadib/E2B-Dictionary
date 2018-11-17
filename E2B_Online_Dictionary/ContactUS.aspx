<%@ Page Title="" Language="C#" MasterPageFile="~/body.Master" AutoEventWireup="true" CodeBehind="ContactUS.aspx.cs" Inherits="E2B_Online_Dictionary.ContactUS" %>
<%@ Register src="infoForm.ascx" tagname="infoForm" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <uc1:infoForm ID="infoForm1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
</asp:Content>
