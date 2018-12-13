<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tabuada.aspx.cs" Inherits="Tabuada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>    
    <form id="form1" runat="server">
        <div>
            <h1>Tabuada</h1>
            <p>&nbsp;</p>
            <p>
                <asp:DropDownList ID="dlNumeros" runat="server" Height="19px" Width="175px">
                </asp:DropDownList>
                <asp:Button ID="btExecutar" runat="server" Text="Exibir Tabuada" Width="125px" OnClick="btExecutar_Click" />
            </p>
        </div>
        <asp:ListBox ID="lbDados" runat="server" Height="285px" Width="173px" Visible="False"></asp:ListBox>
        <asp:Table ID="tbDados" runat="server" Height="70px" Width="176px" Visible="False">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">x</asp:TableCell>
                <asp:TableCell runat="server">0</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">x</asp:TableCell>
                <asp:TableCell runat="server">1</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">x</asp:TableCell>
                <asp:TableCell runat="server">2</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">x</asp:TableCell>
                <asp:TableCell runat="server">3</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">x</asp:TableCell>
                <asp:TableCell runat="server">4</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">x</asp:TableCell>
                <asp:TableCell runat="server">5</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">x</asp:TableCell>
                <asp:TableCell runat="server">6</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">x</asp:TableCell>
                <asp:TableCell runat="server">7</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">x</asp:TableCell>
                <asp:TableCell runat="server">8</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">x</asp:TableCell>
                <asp:TableCell runat="server">9</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">x</asp:TableCell>
                <asp:TableCell runat="server">10</asp:TableCell>
                <asp:TableCell runat="server">=</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Home</asp:HyperLink>
    </form>
</body>
</html>
