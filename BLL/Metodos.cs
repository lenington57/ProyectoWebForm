using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Metodos
    {
        private int ToInt(object valor)
        {
            int retorno = 0;
            int.TryParse(valor.ToString(), out retorno);

            return retorno;
        }

        public static List<Usuario> Buscar(int id, int index, string criterio, DateTime desde, DateTime hasta)
        {
            Expression<Func<Usuario, bool>> filtro = p => true;
            Repositorio<Usuario> repositorio = new Repositorio<Usuario>();
            List<Usuario> listUsuarios = new List<Usuario>();

            switch (index)
            {
                case 0://Todo
                    break;

                case 1://Todo por fecha
                    filtro = p => p.Fecha >= desde && p.Fecha <= hasta;
                    break;

                case 2://UsuarioId
                    filtro = p => p.UsuarioId == id && p.Fecha >= desde && p.Fecha <= hasta;
                    break;

                case 3://Nombre
                    filtro = p => p.Nombres.Contains(criterio) && p.Fecha >= desde && p.Fecha <= hasta;
                    break;
                case 4://Email
                    filtro = p => p.Email.Contains(criterio) && p.Fecha >= desde && p.Fecha <= hasta;
                    break;
            }

            listUsuarios = repositorio.GetList(filtro);

            return listUsuarios;
        }
    }
}
