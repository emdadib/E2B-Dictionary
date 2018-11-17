<%@ Page Title="" Language="C#" MasterPageFile="~/body.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="E2B_Online_Dictionary.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">


    <div class="container">
        <div class="row">
            <%--            <div class="col-sm-4">

            </div>--%>
        
            <div class="col-sm-8" style="color:midnightblue">
                <h1 class="h1 text-center">Write a English Word...</h1>
               
                <br />
                <table class="table table-responsive">
                    <tr>
                        <td>
               
               <asp:TextBox CssClass="form-control input-lg" ID="txtsearch" runat="server" TextMode="Search"></asp:TextBox>
                        </td>
                        <td>
                 <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary" Text="Search" />
                        </td>
                    </tr>
                </table>
                     </div>
               
              
                   
                <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" PagerStyle-HorizontalAlign="Justify" PagerStyle-VerticalAlign="Middle" PagerSettings-Mode="NextPreviousFirstLast">
                    <Columns>
                        <asp:BoundField DataField="en_word" HeaderText="ইংরেজি শব্দ" SortExpression="en_word" />
                        <asp:BoundField DataField="bn_word" HeaderText="বাংলা অর্থ" SortExpression="bn_word" />
                    </Columns>
                    <PagerSettings Mode="NumericFirstLast" />

<PagerStyle HorizontalAlign="Justify" VerticalAlign="Middle" BackColor="#E8F0F0"></PagerStyle>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [en_word], [bn_word] FROM [words] WHERE ([en_word] = @en_word)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtsearch" Name="en_word" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                       </div>
        <asp:Button CssClass="btn btn-info" ID="btnPDF" runat="server" Text="Save PDF" OnClick="btnPDF_Click" />
        </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
</asp:Content>
