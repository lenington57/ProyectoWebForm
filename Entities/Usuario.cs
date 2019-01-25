using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Usuario
    {
        [Key]
        public int UsuarioId { get; set; }

        public string Nombres { get; set; }

        public string NoTelefono { get; set; }

        public string Email { get; set; }

        public string Password { get; set; }

        public string CPassword { get; set; }

        public string TipoUsuario { get; set; }

        public string Permisos { get; set; }


        public Usuario()
        {
            UsuarioId = 0;
            Nombres = string.Empty;
            NoTelefono = string.Empty;
            Email = string.Empty;
            Password = string.Empty;
            CPassword = string.Empty;
            TipoUsuario = string.Empty;
            Permisos = string.Empty;
        }

        public Usuario(int usuarioId, string nombres, string noTelefono, string email, string password, string cpassword, string tipoUsuario, string permisos)
        {
            UsuarioId = usuarioId;
            Nombres = nombres;
            NoTelefono = NoTelefono;
            Email = email;
            Password = password;
            CPassword = cpassword;
            TipoUsuario = tipoUsuario;
            Permisos = permisos;
        }
    }
}
