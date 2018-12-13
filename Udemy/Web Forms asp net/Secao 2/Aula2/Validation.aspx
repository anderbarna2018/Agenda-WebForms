<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validation.aspx.cs" Inherits="Validation" %>



<%@ Register src="UC_Menu.ascx" tagname="UC_Menu" tagprefix="uc1" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 17px;
        }
        .auto-style2 {
            margin-left: 14px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:UC_Menu ID="UC_Menu1" runat="server" />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" BackColor="#3333FF" GroupingText="Validação de campos" Height="911px" Width="1040px">
                <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
                &nbsp;&nbsp;<asp:TextBox ID="txtNome" runat="server" CssClass="auto-style2" Width="149px"></asp:TextBox>
                &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" ErrorMessage="O nome é obrigatório"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="E-mail"></asp:Label>
                &nbsp;<asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style2" Width="149px"></asp:TextBox>
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Informe o E-mail corretamente" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Idade"></asp:Label>
&nbsp;
                <asp:TextBox ID="txtIdade" runat="server" CssClass="auto-style1" Width="148px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtIdade" ErrorMessage="Valor fora do escope permitido" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Senha"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtSenha1" runat="server" TextMode="Password" Width="147px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSenha1" ErrorMessage="Informe a senha"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Senha"></asp:Label>
                &nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="txtSenha2" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSenha2" ErrorMessage="Informe á segunda senha"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtSenha1" ControlToValidate="txtSenha2" ErrorMessage="Os valores não são iguais"></asp:CompareValidator>
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="btEnviar0" runat="server" Text="Enviar" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                <br />
                <br />
                <br />
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
