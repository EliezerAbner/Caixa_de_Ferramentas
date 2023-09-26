using System;
using System.Collections.Generic;
using System.Text;

namespace AppCaixaFerramentas.Models
{
    class Agendamento
    {
        public int agendamentoId { get; set; }
        public DateTime dataVerificacao { get; set; }
        public string msgDoDia { get; set; }
    }
}
