using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoWebForm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void iniciarSButton_Click(object sender, EventArgs e)
        {
            BLL.UsuarioRepositorio.Autenticar(emailTextBox.Text, passwordTextBox.Text, this);
        }
    }
}