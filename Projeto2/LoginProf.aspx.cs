using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto2
{
    public partial class LoginProf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            string usuario = txtUser.Text;
            string senha = txtSenha.Text;

            // Cria conexão com o banco de dados
            PegasusAcademyEntities conexao = new PegasusAcademyEntities();
            //Consulta objeto usuário baseado em login e senha
            usuario usuarios =
            conexao.usuario.FirstOrDefault(
                linha => linha.login.Equals(usuario) &&
                         linha.senha.Equals(senha)
                );

            if (usuarios != null)
            {
                //Login Bem sucedido
                Response.Redirect("Cadastro_prof.aspx");
            }
}

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}

