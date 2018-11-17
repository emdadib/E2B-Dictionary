<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="infoForm.ascx.cs" Inherits="studentInfo.User_Control.infoForm" %>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
<h1 class="h1 text-center">Contact Form</h1>
<table class="table table-hover">
    <tr>
        <td>NAME</td>
        <td>
            <asp:TextBox CssClass="form-control" ID="txtName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Required!" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>EMAIL</td>
        <td>
            <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required!" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>PHONE&nbsp;</td>
        <td>
            <asp:TextBox CssClass="form-control" ID="txtPhone" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone" ErrorMessage="Required!" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>DATE OF BIRTH</td>
        <td>
            <asp:TextBox CssClass="form-control" ID="birthDate" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="birthDate" ErrorMessage="Required!" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>GENDER</td>
        <td>
            <asp:DropDownList CssClass="dropdown" ID="ddlGender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>MESSAGE</td>
        <td>
            <asp:TextBox CssClass="form-control" ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMessage" ErrorMessage="Required!" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:CheckBox CssClass="checkbox" ID="chkAgree" runat="server" Text=" Agree with Condition" />
        </td>
        <td>
            <asp:Label ID="msg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button CssClass="btn btn-light" ID="btnSave" runat="server" Text="Send To Us" OnClick="btnSave_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

<asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        <asp:BoundField DataField="dateOfBirth" HeaderText="dateOfBirth" SortExpression="dateOfBirth" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Email], [Phone], [dateOfBirth], [Gender], [Message] FROM [userMassage] ORDER BY [Name]"></asp:SqlDataSource>


