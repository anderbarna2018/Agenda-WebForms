<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tabuada.aspx">Tabuada</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ParOuImparFatorial.aspx">Par ou Impar</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DiasVida.aspx">Calcula Dias de Vida</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagens/20108590_1476838962382396_8083161668011258380_n.png" Width="101px" PostBackUrl="~/BasicoJavaScript.aspx" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="65px" ImageUrl="~/Imagens/26991813_1684807214918902_5179663155305634377_n.jpg" Width="56px"  PostBackUrl="~/SitesParceiros.aspx"/>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style1" Height="63px" ImageUrl="~/Imagens/313395.jpg" Width="219px" PostBackUrl="~/Cursos.aspx"/>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
