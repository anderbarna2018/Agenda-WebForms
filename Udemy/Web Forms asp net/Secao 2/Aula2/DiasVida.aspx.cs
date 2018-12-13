using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DiasVida : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        calDataAtual.SelectedDate = DateTime.Now;
    }

    protected void btnCalcularDiasVida_Click(object sender, EventArgs e)
    {
        var DiaNascimento = calDataNascimento.SelectedDate.Day;
        var MesNascimento = calDataNascimento.SelectedDate.Month * 30;
        var AnoNascimento = calDataNascimento.SelectedDate.Year * 365;

        var DiaAtual = calDataAtual.SelectedDate.Day;
        var MesAtual = calDataAtual.SelectedDate.Month * 30;
        var AnoAtual = calDataAtual.SelectedDate.Year * 365;

        lbResultado.Text = "Dias de Vida: " + ((DiaAtual + MesAtual + AnoAtual) - (DiaNascimento + MesNascimento + AnoNascimento)).ToString();
    }
}