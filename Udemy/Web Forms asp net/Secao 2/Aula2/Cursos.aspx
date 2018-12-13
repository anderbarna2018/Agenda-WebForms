<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cursos.aspx.cs" Inherits="Cursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Propaganda/Propaganda.xml" />
            <br />
            <asp:Literal ID="Literal1" runat="server" Text="&lt;b&gt;Teste"></asp:Literal>
            <br />
        </div>
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:ImageButton ID="Image1" runat="server" ImageUrl="~/Imagens/20108590_1476838962382396_8083161668011258380_n.png" Height="221px" Width="391px" AlternateText="Pacific Rim" DescriptionUrl="Descrição: Pacific Rim" ToolTip="Click Aqui para saber mais!" OnClick="Image1_Click" />
                    <asp:ImageButton ID="Image2" runat="server" CssClass="auto-style1" Height="221px" ImageUrl="~/Imagens/242556.jpg" Width="391px" AlternateText="Game Of Thrones" DescriptionUrl="Descrição: Game Of Thrones" ToolTip="Click Aqui para saber mais!" OnClick="Image2_Click" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Label ID="Label2" runat="server" Text="View 2 Teste"></asp:Label>
                    <p>
                        Nesta seção você irá modificar o HelloWorldController classe para usar a exibição 
                    de arquivos de modelo para corretamente encapsulam o processo de geração de 
                    respostas HTML para um cliente.
                    Você criará um arquivo de modelo de exibição usando o mecanismo de exibição Razor.
                    Modelos de exibição baseado no Razor têm uma . cshtml extensão de arquivo e fornecem
                    uma maneira elegante de criar o HTML de saída usando a linguagem c#. Razor 
                    minimiza o número de caracteres e pressionamentos de teclas necessários ao 
                    escrever um modelo de exibição e permite um rápido, fluido fluxo de trabalho de codificação.
                    </p>
                    <p>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.udemy.com/aspnet-web-forms/learn/v4/t/lecture/8200076?start=7" Target="_blank">Compre na Black Friday!</asp:HyperLink>
                    </p>
                    <p>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://pt.wikipedia.org/wiki/Pacific_Rim" Target="_blank">Visite Pacic Rim!</asp:HyperLink>
                    </p>
                    <p>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Voltar</asp:LinkButton>
                    </p>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:Label ID="Label3" runat="server" Text="Game of Thrones"></asp:Label>
                    <p>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://www.udemy.com/aspnet-web-forms/learn/v4/t/lecture/8200076?start=7" Target="_blank">Compre na Black Friday!</asp:HyperLink>
                    </p>
                    <p>
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://pt.wikipedia.org/wiki/Game_of_Thrones" Target="_self">Visite Game Of Thrones!</asp:HyperLink>
                    </p>
                    <p>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click">Voltar</asp:LinkButton>
                    </p>
                </asp:View>
            </asp:MultiView>
        </div>

    </form>
</body>
</html>
