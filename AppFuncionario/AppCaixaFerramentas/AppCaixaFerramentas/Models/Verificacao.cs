using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppCaixaFerramentas.Models
{
    class Verificacao : Conexao
    {
        public int Id { get; set; }
        public int FerramentaId { get; set; }
        public int FuncionarioId { get; set; }

        public void FazerVerificacao(int ferramentaId, int funcionarioId)
        {
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                string sql = $"INSERT INTO verificacao(ferramentaId, funcionarioId, dataVerificacao) VALUES({ferramentaId},{funcionarioId},NOW())";
                con.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    cmd.ExecuteNonQuery();
                }
                con.Close();
            }
        }
    }
}
