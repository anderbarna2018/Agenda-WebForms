using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Triangulo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnVerificar_Click(object sender, EventArgs e)
    {
        var LadoA = Convert.ToInt32(txtLadoA.Text);
        var LadoB = Convert.ToInt32(txtLadoB.Text);
        var LadoC = Convert.ToInt32(txtLadoC.Text);
        lbResposta.Text = "Os valores informados não representam triangulo";
        if ((LadoA < LadoB + LadoC) && (LadoB < LadoA + LadoC) && (LadoC < LadoA + LadoB))
        {
            lbResposta.Text = "Os valores informados representam triangulo";
        }
    }
}