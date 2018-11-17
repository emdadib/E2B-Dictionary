<%@ Page Title="" Language="C#" MasterPageFile="~/body.Master" AutoEventWireup="true" CodeBehind="B2E.aspx.cs" Inherits="E2B_Online_Dictionary.B2E" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
     <div class="row">
<%--            <div class="col-sm-4">

            </div>--%>
            <div class="col-sm-8" style="color:midnightblue">
                <h1 class="h1 text-center">একটি বাংলা শব্দ লিখুন...</h1>
             
                <table class="table table-responsive">
                    <tr>
                        <td>
               
               <asp:TextBox CssClass="form-control input-lg" ID="TextBox1" runat="server" TextMode="Search"></asp:TextBox>
                        </td>
                        <td>
                 <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary" Text="Search" />
                        </td>
                    </tr>
                </table>
                     </div>
             
                   
                <asp:GridView ID="GridView2" CssClass="table table-striped" runat="server" AutoGenerateColumns="False"  AllowPaging="True" PagerStyle-HorizontalAlign="Justify" PagerStyle-VerticalAlign="Middle" PagerSettings-Mode="NextPreviousFirstLast" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="bn_word" HeaderText="বাংলা শব্দ" SortExpression="bn_word" />
                        <asp:BoundField DataField="en_word" HeaderText="English Meaning" SortExpression="en_word" />
                    </Columns>
                    <PagerSettings Mode="NumericFirstLast" />

<PagerStyle HorizontalAlign="Justify" VerticalAlign="Middle" BackColor="#E8F0F0"></PagerStyle>
                </asp:GridView>

                
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [en_word], [bn_word] FROM [words] WHERE ([bn_word] = @bn_word)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="bn_word" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

                
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
</asp:Content>
