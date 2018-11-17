<%@ Page Title="" Language="C#" MasterPageFile="~/body.Master" AutoEventWireup="true" CodeBehind="Word Bank.aspx.cs" Inherits="E2B_Online_Dictionary.Word_Bank" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <h2 class="text-center h2"> Word Bank | শব্দ ভান্ডার </h2> 
    <br />
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="en_word" HeaderText="English" SortExpression="en_word" />
            <asp:BoundField DataField="bn_word" HeaderText="Bangla" SortExpression="bn_word" />
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [en_word], [bn_word] FROM [words]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
     <asp:BulletedList ID="blNav" runat="server" DisplayMode="HyperLink" 
                        CssClass="nav nav-pills nav-stacked " Target="_blank">
                        <asp:ListItem Value="~/ReportViewer.aspx">Report View</asp:ListItem>
                        
                    </asp:BulletedList>
</asp:Content>
