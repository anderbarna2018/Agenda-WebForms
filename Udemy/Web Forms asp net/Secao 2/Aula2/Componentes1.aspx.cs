using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Componentes1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInserir_Click(object sender, EventArgs e)
    {
        lbEndereco.Items.Add(new ListItem(txtSite.Text, txtEndereco.Text));
       


        ListItem Items = new ListItem(txtEndereco.Text, lbEndereco.Items.Count.ToString());
        lbEndereco.Items.Add(Items);
        txtEndereco.Text = "";
        txtSite.Text = "";
    }

    protected void btSelecionar_Click(object sender, EventArgs e)
    {

        dlSite.Items.Clear();
        foreach (ListItem item in lbEndereco.Items)
        {
            if (item.Selected)
            {                
                item.Selected = false;
                dlSite.Items.Add(item);
            }
        }
    }
}