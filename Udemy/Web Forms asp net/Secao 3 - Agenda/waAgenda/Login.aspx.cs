using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogar_Click(object sender, EventArgs e)
    {
        var email = txtEmail.Text;
        var senha = txtSenha.Text;
        using (var con = Conexao.ObterConexao())
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from usuario where email = @email and senha = @senha";            
            cmd.Parameters.AddWithValue("email", txtEmail.Text);
            cmd.Parameters.AddWithValue("senha", txtSenha.Text);
            con.Open();
            using (var registro = cmd.ExecuteReader())
            {
                lbMSG.Text = "";
                if (registro.HasRows)
                {
                    Response.Redirect("~/index.aspx");
                }
                else
                {
                    lbMSG.Text = "E-mail ou senha inválidos";
                }
            }            
        }
    }
}