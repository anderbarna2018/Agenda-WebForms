using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ParOuImparFatorial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pnParOuImpar.Visible = false;
            pnFatorial.Visible = false;
        }
    }

    protected void blLista_Click(object sender, BulletedListEventArgs e)
    {
        pnParOuImpar.Visible = false;
        pnFatorial.Visible = false;
        switch (e.Index)
        {
            case 0:
                pnParOuImpar.Visible = true;
                break;
            case 1:
                pnFatorial.Visible = true;
                break;
        }
    }

    protected void btnVerificar_Click(object sender, EventArgs e)
    {
        var numero = Convert.ToInt32(txtValorpn1.Text.Trim());
        var mensagem = "O número é par";
        if (numero%2 !=0)
        {
            mensagem = "O número é impar";
        }
        lResp1.Text = mensagem;
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        pnParOuImpar.Visible = false;
        pnFatorial.Visible = false;
        switch (RadioButtonList1.SelectedIndex)
        {
            case 0:
                pnParOuImpar.Visible = true;
                break;
            case 1:
                pnFatorial.Visible = true;
                break;
        }
    }

    protected void btnCalcular_Click(object sender, EventArgs e)
    {        
        try
        {
            var numero = Convert.ToInt32(txtValorpn2.Text.Trim());
            if (numero < 0)
            {
                lResp2.Text = "Informe apenas números positivos;";
            }
            else if (numero == 0)
            {
                lResp2.Text = "0! = 1;";
            }
            else
            {
               var valor = numero;
                for (int i = numero-1; i >0; i--)
                {
                    valor = valor * i;
                }
                lResp2.Text = numero.ToString() + "! = " +valor.ToString()+";";
            }
        }
        catch (Exception)
        {

            lResp2.Text = "Informe apenas números positivos;";
        }
    }
}