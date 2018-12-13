<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataList.aspx.cs" Inherits="DataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
            <br />
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="E-mail"></asp:Label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click" Text="Cadastrar" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Lista de Contatos"></asp:Label>
            <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyField="Id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="16px" Width="496px">
                <AlternatingItemStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <ItemTemplate>
                    Código:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    &nbsp;Nome:
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    &nbsp;Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Nome], [Email] FROM [Contato]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
