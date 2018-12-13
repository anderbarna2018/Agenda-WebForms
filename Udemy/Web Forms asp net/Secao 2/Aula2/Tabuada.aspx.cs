using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tabuada : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 1; i < 11; i++)
            {
                dlNumeros.Items.Add(new ListItem(i.ToString()));
            }
        }
    }

    protected void btExecutar_Click(object sender, EventArgs e)
    {
        //    lbDados.Items.Clear();
        var valor = Convert.ToUInt32(dlNumeros.SelectedValue);
        //    for (int i = 0; i < 11; i++)
        //    {
        //        lbDados.Items.Add(i.ToString() + " x " + valor.ToString()+ "= " + (i*valor).ToString());
        //        tbDados.Rows[i].Cells[0].Text = valor.ToString();
        //        tbDados.Rows[i].Cells[4].Text = (i * valor).ToString();
        //    }
        Table tabela = new Table();
        for (int i = 0; i < 11; i++)
        {
            var linha = new TableRow();

            var coluna = new TableCell();
            coluna.Text = i.ToString() + " x " + valor.ToString() + "= ";
            linha.Cells.Add(coluna);


            coluna = new TableCell();
            coluna.Text =  (i * valor).ToString();
            linha.Cells.Add(coluna);

            tabela.Rows.Add(linha);
        }
        PlaceHolder1.Controls.Add(tabela);
    }
}