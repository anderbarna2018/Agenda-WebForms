using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Wizard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Wizard1.ActiveStepIndex = 0;
        }
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        var nome = ((TextBox)Wizard1.WizardSteps[0].FindControl("txtNome")).Text;
        var CPF = ((TextBox)Wizard1.WizardSteps[0].FindControl("txtCPF")).Text;
        var RG = ((TextBox)Wizard1.WizardSteps[0].FindControl("txtRG")).Text;

        var Cep = ((TextBox)Wizard1.WizardSteps[1].FindControl("txtCEP")).Text;
        var Cidade = ((TextBox)Wizard1.WizardSteps[1].FindControl("txtCidade")).Text;
        var Rua = ((TextBox)Wizard1.WizardSteps[1].FindControl("txtRua")).Text;
        var Bairro = ((TextBox)Wizard1.WizardSteps[1].FindControl("txtBairro")).Text;

        Wizard1.Visible = false;
        Response.Write("<h1>Dados do formularios wizard</h1>");
        Response.Write("<h3>Nome:" + nome + "</h3>");
        Response.Write("<h3>CPF:" + CPF + "</h3>");

        Response.Write("<h3>Bairro:" + Bairro + "</h3>");

        
    }
}