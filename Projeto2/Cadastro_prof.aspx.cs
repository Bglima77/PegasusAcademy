using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto2
{
    public partial class Cadastro_prof : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        private void limpar()
        {
            txtNome.Text = string.Empty;
            txtEndereco.Text = string.Empty;
            txtDatanasc.Text = string.Empty;
            txtCPF.Text = string.Empty;
            txtBairro.Text = string.Empty;
            txtCelular.Text = string.Empty;
            txtFormacao.Text = string.Empty;
            txtExp.Text = string.Empty;
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuscaPersonal.aspx");
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            PegasusAcademyEntities conexao = new PegasusAcademyEntities();
            try
            {
                Personal prof = new Personal();
                prof.Nome = txtNome.Text;
                prof.Bairro = txtBairro.Text;
                prof.Celular = txtCelular.Text;
                prof.CPF = txtCPF.Text;
                prof.DataNasc = Convert.ToDateTime(txtDatanasc.Text);
                prof.Endereco = txtEndereco.Text;
                prof.Experiencia = txtExp.Text;
                prof.Formacao = txtFormacao.Text;
                conexao.Personal.Add(prof);
                conexao.SaveChanges();
                limpar();
                Response.Write("<script>alert('Personal salvo(a) com Sucesso!');</script>");
            }
            catch
            {
                Response.Write("<script>alert('Registro não salvo!');</script>");
            }
        }
        protected void btnNovo_Click(object sender, EventArgs e)
        {
            limpar();
        }
    }
}
 


