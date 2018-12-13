<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AloMundo.aspx.cs" Inherits="AloMundo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Alo Mundo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="txtMensagem" runat="server" Width="701px"></asp:TextBox>
        <asp:Button ID="btExecutar" runat="server" OnClick="btExecutar_Click" Text="Executar" />
        <p>
            <asp:Label ID="lbMensagem" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
