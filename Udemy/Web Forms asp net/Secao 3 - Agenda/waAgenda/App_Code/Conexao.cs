using System.Configuration;
using System.Data.SqlClient;


public static class Conexao
{

    public static SqlConnection ObterConexao()
    {
        var strconexao = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strconexao);
        return con;
    }
}