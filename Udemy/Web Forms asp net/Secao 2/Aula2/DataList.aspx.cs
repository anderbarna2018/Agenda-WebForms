using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class DataList : System.Web.UI.Page
{
    private readonly string conexao = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(conexao);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "insert into contato (nome,email) values(@nome,@email)";
        cmd.Parameters.AddWithValue("nome", txtNome.Text);
        cmd.Parameters.AddWithValue("email", txtEmail.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        DataList1.DataBind();

        txtNome.Text = "";
        txtEmail.Text = "";

    }
}