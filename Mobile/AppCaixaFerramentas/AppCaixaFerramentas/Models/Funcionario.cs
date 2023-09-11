using System;
using System.Collections.Generic;
using System.Text;

namespace AppCaixaFerramentas.Models
{
    class Funcionario
    {
        public int id { get; set; }
        public int supervisorId { get; set; }
        public string nomeFuncionario { get; set; }
        public string email { get; set; }
        public string setor { get; set; }
        public string cargo { get; set; }
    }
}
