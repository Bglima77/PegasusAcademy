using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto2
{
	public partial class Cadastro_aluno : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuscaAluno.aspx");
        }

        private void limpar()
        {
            txtNome.Text = string.Empty;
            txtEndereco.Text = string.Empty;
            txtDataNasc.Text = string.Empty;
            txtCPF.Text = string.Empty;
            txtCelular.Text = string.Empty;
            ddlPersonal.SelectedIndex = -1;
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            PegasusAcademyEntities conexao = new PegasusAcademyEntities();
            try
            {
                Aluno a = new Aluno();
                a.Nome = txtNome.Text;
                a.Celular = txtCelular.Text;
                a.CPF = txtCPF.Text;
                a.DataNasc = Convert.ToDateTime(txtDataNasc.Text);
                a.Endereco = txtEndereco.Text;
                a.Personal = ddlPersonal.SelectedValue;
                conexao.Aluno.Add(a);
                conexao.SaveChanges();
                limpar();
                Response.Write("<script>alert('Aluno salvo com Sucesso!');</script>");
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
  