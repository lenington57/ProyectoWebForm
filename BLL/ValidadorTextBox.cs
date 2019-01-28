using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class ValidadorTextBox : ValidationAttribute
    {

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            var numero = int.Parse(value.ToString());
            if (numero >= 0)
            {
                return new ValidationResult(ErrorMessage = "El número es mayor que 100");
            }

            return ValidationResult.Success;
        }
    }
}
