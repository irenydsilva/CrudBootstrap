using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;
   

namespace Web.Pages
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarCliente_Click(object sender, EventArgs e)
        {
            try
            {
                Pessoa p = new Pessoa();
                p.Nome = txtNome.Text;
                p.Endereco = txtEndereco.Text;
                p.Email = txtEmail.Text;

                PessoaDAL d = new PessoaDAL();
                d.Gravar(p);

                lblMensagem.Text = "Cadastro realizado com sucesso";
            }
            catch (Exception ex)
            {

                lblMensagem.Text = ex.Message;
            }
        }
    }
}