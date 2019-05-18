using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL.Model;
namespace DAL.Persistence
{
    public class PessoaDAL : Conexao
    {
        public void Gravar(Pessoa p)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("INSERT INTO Pessoa(Nome, Endereco, Email) VALUES (@v1, @v2, @v3)", Con);
                Cmd.Parameters.AddWithValue("@v1", p.Nome);
                Cmd.Parameters.AddWithValue("@v2", p.Endereco);
                Cmd.Parameters.AddWithValue("@v3", p.Email);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {

                throw new Exception("Erro ao gravar cliente" + e.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public void Atualizar(Pessoa p)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand(" UPDATE Pessoa SET Nome=@v1, Endereco=@v2, Email=@v3 WHERE Codigo=@v4", Con);
                Cmd.Parameters.AddWithValue("@v1", p.Nome);
                Cmd.Parameters.AddWithValue("@v2", p.Endereco);
                Cmd.Parameters.AddWithValue("@v3", p.Email);
                Cmd.Parameters.AddWithValue("@v4", p.Codigo);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {

                throw new Exception("Erro ao atualizar cliente" + e.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public void Excluir(Pessoa p)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand(" DELETE FROM Pessoa  WHERE Codigo=@v1", Con);

                Cmd.Parameters.AddWithValue("@v1", p.Codigo);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {

                throw new Exception("Erro ao Excluir cliente" + e.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public Pessoa PesquisarPorCodigo(int Codigo)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand(" SELECT * FROM Pessoa  WHERE Codigo=@v1", Con);

                Cmd.Parameters.AddWithValue("@v1", Codigo);

                Cmd.ExecuteNonQuery();
                 Pessoa p = null;

                if (Dr.Read())
                {
                    p = new Pessoa();
                    p.Codigo = Convert.ToInt32(Dr["Codigo"]);
                    p.Nome = Dr["Nome"].ToString();
                    p.Endereco = Dr["Endereco"].ToString();
                    p.Email = Dr["Email"].ToString();
                }
                return p;
            }
            catch (Exception e)
            {

                throw new Exception("Erro ao pesquisar o cliente" + e.Message);
            }
            finally
            {
                FecharConexao();
            }

        }

        public List<Pessoa> Listar ()
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand(" SELECT * FROM Pessoa", Con);

                //Cmd.Parameters.AddWithValue("@v1", Codigo);

                Dr = Cmd.ExecuteReader();
                List<Pessoa> lista = new List<Pessoa>();

                while (Dr.Read())
                {
                    Pessoa p = new Pessoa();
                    p.Codigo = Convert.ToInt32(Dr["Codigo"]);
                    p.Nome = Dr["Nome"].ToString();
                    p.Endereco = Dr["Endereco"].ToString();
                    p.Email = Dr["Email"].ToString();
                    lista.Add(p);
                }
                return lista; 
            }
            catch (Exception e)
            {

                throw new Exception("Erro ao pesquisar o cliente" + e.Message);
            }
            finally
            {
                FecharConexao();
            }

        }

    }
}
