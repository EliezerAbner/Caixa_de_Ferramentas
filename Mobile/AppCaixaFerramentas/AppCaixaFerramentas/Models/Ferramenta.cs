using System;
using System.Collections.Generic;
using System.Text;

namespace AppCaixaFerramentas.Models
{
    class Ferramenta
    {
        public int id { get; set; }
        public int funcionarioId { get; set; }
        public string nomeFerramenta { get; set; }
        public string tipo { get; set; }
        public string codigo { get; set; }
    }
}
