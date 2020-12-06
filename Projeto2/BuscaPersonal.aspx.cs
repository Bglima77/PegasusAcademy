using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto2
{
    public partial class BuscaPersonal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            using (PegasusAcademyEntities entities = new PegasusAcademyEntities())
            {
                List<Personal> lista = null;
                if (rbNome.Checked)
                {
                    lista = entities.Personal.Where(x => x.Nome.StartsWith(txtBuscar.Text)).ToList();
                }
                else if (rbCPF.Checked)
                {
                    lista = entities.Personal.Where(x => x.CPF.StartsWith(txtBuscar.Text)).ToList();
                }
                else
                {
                    lista = entities.Personal.ToList();
                }
                GridView1.DataSource = lista.OrderBy(x => x.ID_Personal);
                GridView1.DataBind();
            }
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {
            try
            {
                PegasusAcademyEntities conexao = new PegasusAcademyEntities();
                int IDselecionado = Convert.ToInt32(GridView1.SelectedValue.ToString());
                Personal p = conexao.Personal.FirstOrDefault(
                    linha => linha.ID_Personal.ToString().Equals(IDselecionado.ToString()));

                conexao.Personal.Remove(p);
                conexao.SaveChanges();

                Response.Write("<script>alert('Personal removido com sucesso');</script>");
                GridView1.DataBind();
            }
            catch
            {
                Response.Write("<script>alert('Falha ao remover');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cadastro_prof.aspx");
        }
    }
}