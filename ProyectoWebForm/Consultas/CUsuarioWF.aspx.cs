using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoWebForm.Consultas
{
    public partial class CUsuarioWF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int ToInt(object valor)
        {
            int retorno = 0;
            int.TryParse(valor.ToString(), out retorno);

            return retorno;
        }

        protected void buscarLinkButton_Click(object sender, EventArgs e)
        {
            UsuarioGridView.DataSource = BLL.Metodos.Buscar(ToInt(UsuarioGridView.SelectedIndex), CriterioTextBox.Text);
            UsuarioGridView.DataBind();
        }
    }
}