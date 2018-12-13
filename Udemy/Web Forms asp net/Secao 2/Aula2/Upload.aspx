<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Upload de arquivos"></asp:Label>
            <br />
            <asp:FileUpload ID="fuArquivo" runat="server" AllowMultiple="true" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nome do arquivo"></asp:Label>
            <asp:TextBox ID="txtNomeArquivo" runat="server" Width="703px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Tamanho do arquivo"></asp:Label>
            <asp:TextBox ID="txtTamanhoArquivo" runat="server" Width="689px"></asp:TextBox>
            <br />
            <asp:Button ID="btEnviar" runat="server" OnClick="btEnviar_Click" Text="Enviar arquivo" Width="268px" />
            <asp:Button ID="btEnviarMultiplosArquivos" runat="server"  Text="Enviar multiplos arquivos" Width="268px" OnClick="btEnviarMultiplosArquivos_Click" />
            <br />
            <br />
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
