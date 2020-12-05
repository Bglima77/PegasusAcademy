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
    }
}