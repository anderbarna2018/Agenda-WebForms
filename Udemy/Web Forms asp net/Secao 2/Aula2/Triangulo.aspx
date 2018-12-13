<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Triangulo.aspx.cs" Inherits="Triangulo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lado1" runat="server" text="Lado A"></asp:Label>
            <br />
            <asp:TextBox runat="server" ID="txtLadoA" Text="10"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" text="Lado B"></asp:Label>
            <br />
            <asp:TextBox runat="server" ID="txtLadoB" Text="10"></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server" text="Lado C"></asp:Label>
            <br />
            <asp:TextBox runat="server" ID="txtLadoC" Text="10"></asp:TextBox>
            <br />
            <asp:Button runat="server" ID="btnVerificar"  Text="Verificar" OnClick="btnVerificar_Click"/>
            <br />
            <asp:Label ID="lbResposta" runat="server" Text="Resposta"></asp:Label>
        </div>
    </form>
</body>
</html>
