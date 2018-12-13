<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.master" AutoEventWireup="true" CodeFile="Contatos.aspx.cs" Inherits="Contatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="lbInserirNovoContato" runat="server" Font-Bold="True" Font-Size="Larger" Text="Inserir novo contato"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Nome"></asp:Label>
    <br />
    <asp:TextBox ID="txtNome" runat="server" Width="402px"></asp:TextBox>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
    <br />
    <asp:TextBox ID="txtEmail" runat="server" Width="402px"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Telefone"></asp:Label>
    <br />
    <asp:TextBox ID="txtTelefone" runat="server" Width="391px"></asp:TextBox>
    <asp:Button ID="btnInserir" runat="server" Text="Inserir" OnClick="btnInserir_Click" />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Text="Lista de Contatos"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceCotatos" ForeColor="#333333" GridLines="None" Width="769px" Height="176px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" CancelText="Cancelar" DeleteText="Excluir" EditText="Alterar" InsertText="Inserir" NewText="Novo" SelectText="Selecionar" UpdateText="Salvar" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceCotatos" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [contato] WHERE [Id] = @Id" InsertCommand="INSERT INTO [contato] ([nome], [email], [telefone]) VALUES (@nome, @email, @telefone)" SelectCommand="SELECT [Id], [nome], [email], [telefone] FROM [contato]" UpdateCommand="UPDATE [contato] SET [nome] = @nome, [email] = @email, [telefone] = @telefone WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

