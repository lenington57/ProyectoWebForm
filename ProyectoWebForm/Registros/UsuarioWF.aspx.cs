using BLL;
using Entities;
using ProyectoWebForm.Utilitarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoWebForm.Registros
{
    public partial class UsuarioWF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fechaTextBox.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }

        private void Limpiar()
        {
            usuarioIdTextBox.Text = "0";
            fechaTextBox.Text = DateTime.Now.ToString("yyyy-MM-dd");
            nombreTextBox.Text = " ";
            usernameTextBox.Text = " ";
            noCelularTextBox.Text = "";
            noTelefonoTextBox.Text = "";
            emailTextBox.Text = "";
            passwordTextBox.Text = "";
            cpasswordTextBox.Text = "";
            tipoUsuarioDropDownList.SelectedIndex = 0;
        }

        private Usuario LlenaClase()
        {
            Usuario usuario = new Usuario();

            usuario.UsuarioId = ToInt(usuarioIdTextBox.Text);
            usuario.Fecha = Utils.ToDateTime(fechaTextBox.Text);
            usuario.Nombres = nombreTextBox.Text;
            usuario.NombreUsuario = usernameTextBox.Text;
            usuario.NoTelefono = noTelefonoTextBox.Text;
            usuario.NoCelular = noCelularTextBox.Text;
            usuario.Email = emailTextBox.Text;
            usuario.Password = passwordTextBox.Text;
            usuario.CPassword = cpasswordTextBox.Text;
            usuario.TipoUsuario = tipoUsuarioDropDownList.Text;

            return usuario;

        }

        private int ToInt(object valor)
        {
            int retorno = 0;
            int.TryParse(valor.ToString(), out retorno);

            return retorno;
        }

        private bool HayErrores()
        {
            Repositorio<Usuario> repositorio = new Repositorio<Usuario>();
            Expression<Func<Usuario, bool>> filtrar = x => true;
            Expression<Func<Usuario, bool>> filtro = x => true;
            filtrar = t => t.Email.Equals(emailTextBox.Text);
            filtro = t => t.NombreUsuario.Equals(usernameTextBox.Text);
            string nombre = nombreTextBox.Text;
            bool paso = false;
            string s = passwordTextBox.Text;
            string ss = cpasswordTextBox.Text;
            int comparacion = 0;
            comparacion = String.Compare(s, ss);
            if (comparacion != 0)
            {
                passwordCompareValidator.ErrorMessage = "No Coinciden";
                cpasswordCompareValidator.ErrorMessage = "No Coinciden";
                paso = true;
            }
            if (String.IsNullOrEmpty(nombreTextBox.Text))
            {
                nombreRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                nombreRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            if (String.IsNullOrWhiteSpace(usernameTextBox.Text))
            {
                usernameRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                usernameRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            if (repositorio.GetList(filtro).Count() != 0)
            {
                Response.Write("<script>alert('Este UserName ya existe');</script>");
                paso = true;
            }
            if (String.IsNullOrWhiteSpace(noTelefonoTextBox.Text))
            {
                noTelefonoRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                noTelefonoRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            if (String.IsNullOrWhiteSpace(noCelularTextBox.Text))
            {
                noCelularRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                noCelularRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            if (String.IsNullOrWhiteSpace(emailTextBox.Text))
            {
                emailRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                emailRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            if (repositorio.GetList(filtrar).Count() != 0)
            {
                Response.Write("<script>alert('Este email ya existe');</script>");
                paso = true;
            }
            if (String.IsNullOrWhiteSpace(passwordTextBox.Text))
            {
                passwordRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                passwordRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            if (String.IsNullOrWhiteSpace(cpasswordTextBox.Text))
            {
                cpasswordRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                cpasswordRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            return paso;
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Repositorio<Usuario> repositorio = new Repositorio<Usuario>();
            Usuario usuario = repositorio.Buscar(ToInt(usuarioIdTextBox.Text));
            if (usuario != null)
            {
                nombreTextBox.Text = usuario.Nombres;
                fechaTextBox.Text = usuario.Fecha.ToString();
                noTelefonoTextBox.Text = usuario.NoTelefono;
                noCelularTextBox.Text = usuario.NoCelular;
                emailTextBox.Text = usuario.Email;
                passwordTextBox.Text = usuario.Password;
                cpasswordTextBox.Text = usuario.CPassword;
                tipoUsuarioDropDownList.Text = usuario.TipoUsuario.ToString();
            }
            else
            {
                Utils.ShowToastr(this, "No Hay Resultado", "Error", "error");
            }
        }

        protected void nuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void guadarButton_Click(object sender, EventArgs e)
        {
            BLL.Repositorio<Usuario> repositorio = new BLL.Repositorio<Usuario>();
            Usuario usuario = new Usuario();
            bool paso = false;

            if (HayErrores())
                return;
            else
            {
                //todo: validaciones adicionales
                usuario = LlenaClase();

                if (usuario.UsuarioId == 0)
                {
                    paso = repositorio.Guardar(usuario);
                    Response.Write("<script>alert('Guardado');</script>");
                    Limpiar();
                }
                else
                {
                    int id = ToInt(usuarioIdTextBox.Text);
                    usuario = repositorio.Buscar(id);

                    if (usuario != null)
                    {
                        paso = repositorio.Modificar(LlenaClase());
                        Response.Write("<script>alert('Modificado');</script>");
                    }
                    else
                        Response.Write("<script>alert('Id no existe');</script>");
                }

                if (paso)
                {
                    Limpiar();
                }
                else
                    Response.Write("<script>alert('No se pudo guardar');</script>");
            }
        }

        protected void eliminarButton_Click(object sender, EventArgs e)
        {
            BLL.Repositorio<Usuario> repositorio = new BLL.Repositorio<Usuario>();
            int id = ToInt(usuarioIdTextBox.Text);

            var usuario = repositorio.Buscar(id);

            if (usuario != null)
            {
                if (repositorio.Eliminar(id))
                {
                    Response.Write("<script>alert('Eliminado');</script>");
                    Limpiar();
                }
                else
                    Response.Write("<script>alert('No se pudo eliminar');</script>");
            }
            else
                Response.Write("<script>alert('No existe');</script>");
        }
    }
    
}