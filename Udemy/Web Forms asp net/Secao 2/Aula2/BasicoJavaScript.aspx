<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BasicoJavaScript.aspx.cs" Inherits="BasicoJavaScript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function ExibirMensagem() {
            alert('Alo Mundo!!!');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagens/29062849_1739970216069268_271229075902477202_n.jpg" 
                OnMouseOver="ExibirMensagem()"/>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Click no botão" Width="671px" OnClientClick="ExibirMensagem()" />
    </form>
</body>
</html>
