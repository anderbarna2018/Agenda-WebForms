using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btEnviar_Click(object sender, EventArgs e)
    {
        var nome = fuArquivo.FileName;
        txtNomeArquivo.Text = nome;
        var caminhoUpload = Server.MapPath(@"upload\");
        txtTamanhoArquivo.Text = fuArquivo.PostedFile.ContentLength.ToString();
        fuArquivo.SaveAs(caminhoUpload + nome);
    }

    protected void btEnviarMultiplosArquivos_Click(object sender, EventArgs e)
    {
        try
        {
            var nome = "";
            txtNomeArquivo.Text = nome;
            var caminhoUpload = Server.MapPath(@"upload\");
            for (int i = 0; i < fuArquivo.PostedFiles.Count; i++)
            {
                var nomeCorrente = fuArquivo.PostedFiles[i].FileName;
                fuArquivo.PostedFiles[i].SaveAs(caminhoUpload + nomeCorrente);
                nomeCorrente = nomeCorrente + " - ";
                nome = nome + nomeCorrente;               
            }
            txtNomeArquivo.Text = nome;
        }
        catch (Exception)
        {

            throw;
        }
    }
}