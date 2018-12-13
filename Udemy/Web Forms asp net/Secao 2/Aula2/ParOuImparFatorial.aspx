<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ParOuImparFatorial.aspx.cs" Inherits="ParOuImparFatorial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:BulletedList ID="blLista" runat="server" BulletStyle="Square" DisplayMode="LinkButton" OnClick="blLista_Click">
                <asp:ListItem>Par ou Impar</asp:ListItem>
                <asp:ListItem>Calcula Fatorial</asp:ListItem>
            </asp:BulletedList>
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="19px" Width="421px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem>Par ou Impar</asp:ListItem>
                <asp:ListItem>Fatorial</asp:ListItem>                
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Panel ID="pnParOuImpar" runat="server" Visible="false">
                <asp:Label ID="Label1" runat="server" Text="Verifica se o numero formado é Par ou Impar"></asp:Label>
                <br />
                <asp:TextBox ID="txtValorpn1" runat="server"></asp:TextBox>
                <asp:Button ID="btnVerificar" runat="server" Text="Verificar" OnClick="btnVerificar_Click" />
                <br />
                <asp:Label ID="lResp1" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
            <br />
            <asp:Panel ID="pnFatorial" runat="server" Visible="false">
                <asp:Label ID="Label2" runat="server" Text="Informe um número para verificar se é par ou impar"></asp:Label>
                <br />
                <asp:TextBox ID="txtValorpn2" runat="server"></asp:TextBox>
                <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" />
                <br />
                <asp:Label ID="lResp2" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
