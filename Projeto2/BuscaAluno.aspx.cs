using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto2
{
    public partial class BuscaAluno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cadastro_aluno.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            using (PegasusAcademyEntities entities = new PegasusAcademyEntities())
            {
                List<Aluno> lista = null;
                if (rbNome.Checked)
                {
                    lista = entities.Aluno.Where(x => x.Nome.StartsWith(txtBuscar.Text)).ToList();
                }
                else if (rbCPF.Checked)
                {
                    lista = entities.Aluno.Where(x => x.CPF.StartsWith(txtBuscar.Text)).ToList();
                }
                else
                {
                    lista = entities.Aluno.ToList();
                }
                GridView1.DataSource = lista.OrderBy(x => x.ID_Aluno);
                GridView1.DataBind();
            }
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {
            try
            {
                PegasusAcademyEntities conexao = new PegasusAcademyEntities();
                int IDselecionado = Convert.ToInt32(GridView1.SelectedValue.ToString());
                Aluno a = conexao.Aluno.FirstOrDefault(
                    linha => linha.ID_Aluno.ToString().Equals(IDselecionado.ToString()));

                conexao.Aluno.Remove(a);
                conexao.SaveChanges();
                
                Response.Write("<script>alert('Aluno removido com sucesso');</script>");
                GridView1.DataBind();
            }
            catch
            {
                Response.Write("<script>alert('Falha ao remover');</script>");
            }
        }
    }
}