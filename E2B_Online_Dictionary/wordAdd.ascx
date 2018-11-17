<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wordAdd.ascx.cs" Inherits="E2B_Online_Dictionary.wordAdd" %>

 <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
<h1 class="h1 text-center">WORD ADD | শব্দ যোগ করণ</h1>
<table class="table table-hover">
    <tr>
        <td>English Word</td>
        <td>
            <asp:TextBox CssClass="form-control" ID="enWord" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Bengali Meaning</td>
        <td>
            <asp:TextBox CssClass="form-control" ID="bnWord" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:CheckBox CssClass="checkbox" ID="chkAgree" runat="server" Text="This is a correct word" />
        </td>
        <td>
            <asp:Label ID="msg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button CssClass="btn btn-light" ID="btnSaveWord" runat="server" Text="SAVE WORD" OnClick="btnSave_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

<asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="en_word" HeaderText="English" SortExpression="en_word" />
        <asp:BoundField DataField="bn_word" HeaderText="Bengali" SortExpression="bn_word" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [en_word], [bn_word] FROM [words]"></asp:SqlDataSource>
