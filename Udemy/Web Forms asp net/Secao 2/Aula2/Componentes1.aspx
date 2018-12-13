<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Componentes1.aspx.cs" Inherits="Componentes1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Conhecendo os Componentes parte 1</title>
    <style type="text/css">
        .auto-style1 {
            width: 310px;
        }
        .auto-style2 {
            width: 497px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Site</td>
                    <td class="auto-style2">Endereço</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtSite" runat="server" Width="289px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtEndereco" runat="server" Width="486px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:ListBox ID="lbEndereco" runat="server" Height="69px" Width="473px" SelectionMode="Multiple">
                            <asp:ListItem>Http://dfelitto.com.br</asp:ListItem>
                            <asp:ListItem>sss</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>Opções<br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnInserir" runat="server" Text="Inserir Site" OnClick="btnInserir_Click"  />
                        <asp:Button ID="btSelecionar" runat="server" Text="Selecionar Site" Width="99px" OnClick="btSelecionar_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        </div>
                        <asp:DropDownList ID="dlSite" runat="server" Height="18px" Width="296px">
                        </asp:DropDownList>
    </form>
</body>
</html>
