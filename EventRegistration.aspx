<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventRegistration.aspx.cs"
    Inherits="Registrationfrom.EventRegistration" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Online Event Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Online Event Registration</h2>

        Name:
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator ID="rfvName" runat="server"
            ControlToValidate="txtName" ErrorMessage="Name is required"
            ForeColor="Red" />
        <br /><br />

        Email:
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
            ControlToValidate="txtEmail" ErrorMessage="Email is required"
            ForeColor="Red" />
        <asp:RegularExpressionValidator ID="revEmail" runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression="\w+([.-]\w+)*@\w+([.-]\w+)*\.\w{2,}"
            ErrorMessage="Enter valid email" ForeColor="Red" />
        <br /><br />

        Phone:
        <asp:TextBox ID="txtPhone" runat="server" />
        <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
            ControlToValidate="txtPhone" ErrorMessage="Phone is required"
            ForeColor="Red" />
        <br /><br />

        Select Event:
        <asp:DropDownList ID="ddlEvent" runat="server">
            <asp:ListItem Text="Select Event" Value="" />
            <asp:ListItem Text="Technical Fest" Value="Technical Fest" />
            <asp:ListItem Text="Workshop" Value="Workshop" />
            <asp:ListItem Text="Cultural Fest" Value="Cultural Fest" />
        </asp:DropDownList>

        <asp:RequiredFieldValidator ID="rfvEvent" runat="server"
            ControlToValidate="ddlEvent" InitialValue=""
            ErrorMessage="Select an event" ForeColor="Red" />
        <br /><br />

        Gender:
        <asp:RadioButtonList ID="rblGender" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:RadioButtonList>
        <br />

        <asp:CheckBox ID="chkTerms" runat="server"
            Text="I accept the terms and conditions" />
        <br /><br />

        <asp:Button ID="btnRegister" runat="server"
            Text="Register" OnClick="btnRegister_Click" />

        <br /><br />

        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />

        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
            ForeColor="Red" />
    </form>
</body>
</html>
