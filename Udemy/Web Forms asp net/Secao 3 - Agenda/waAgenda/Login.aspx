<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server" Width="367px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            <br />
            <asp:TextBox ID="txtSenha" runat="server" Width="367px"></asp:TextBox>
            <br />
            <asp:Button ID="btnLogar" runat="server" Text="Logar" OnClick="btnLogar_Click" />
            <br />
            <br />
    <asp:Label ID="lbMSG" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </div>
    </form>
</body>
</html>
