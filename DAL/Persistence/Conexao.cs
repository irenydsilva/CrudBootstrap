using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Persistence
{
    public class Conexao
    {

        protected SqlConnection Con;
        protected SqlCommand Cmd;
        protected SqlDataReader Dr;

        protected void AbrirConexao()
        {
            try
            {
                Con = new SqlConnection(@"Data Source=ireny\sqlexpress;Initial Catalog=CRUD;Integrated Security=True;Pooling=False");
                Con.Open();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }

        protected void FecharConexao()
        {
            try
            {
                Con.Close();

            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }

    }
}
