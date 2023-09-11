using System;
using System.Collections.Generic;
using System.Text;

namespace AppCaixaFerramentas.Models
{
    class Verificacao
    {
        public int verificacaoId { get; set; }
        public int funcionarioId { get; set; }
        public int ferramentaId { get; set; }
        public int agendamentoId { get; set; }
        public DateTime dataVerificacao { get; set; }
    }
}
