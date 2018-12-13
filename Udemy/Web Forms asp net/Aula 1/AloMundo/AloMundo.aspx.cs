using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AloMundo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btExecutar_Click(object sender, EventArgs e)
    {
        if (lbMensagem.Text=="")
        {
            lbMensagem.Text = "<h1>Alô mundo - Aula 1</h1>";
        }
        else
        {
            lbMensagem.Text = txtMensagem.Text;
        }
    }
}