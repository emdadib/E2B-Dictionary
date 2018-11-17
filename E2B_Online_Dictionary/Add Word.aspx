<%@ Page Title="" Language="C#" MasterPageFile="~/body.Master" AutoEventWireup="true" CodeBehind="Add Word.aspx.cs" Inherits="E2B_Online_Dictionary.Add_Word" %>
<%@ Register src="wordAdd.ascx" tagname="wordAdd" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <uc1:wordAdd ID="wordAdd1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
</asp:Content>
