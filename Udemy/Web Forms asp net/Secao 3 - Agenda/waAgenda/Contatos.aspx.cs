using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contatos : System.Web.UI.Page
{
    private readonly string conexao = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInserir_Click(object sender, EventArgs e)
    {

        using (var con = Conexao.ObterConexao())
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into contato (nome,email,telefone) values(@nome,@email,@telefone)";
            cmd.Parameters.AddWithValue("nome", txtNome.Text);
            cmd.Parameters.AddWithValue("email", txtEmail.Text);
            cmd.Parameters.AddWithValue("telefone", txtTelefone.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.DataBind();
        }
        
    }
}