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

        public bool JanelaVerificacoes()
        {
			string result = "";
			using (MySqlConnection con = new MySqlConnection(conn))
            {
                string dataAtual = DataAtual();
                string sql = $"SELECT agendamentoId FROM agendamento WHERE dataInicial <= '{dataAtual}' AND dataFinal >= '{dataAtual}'";

                con.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    result = Convert.ToString(cmd.ExecuteScalar());
                }
                con.Close();
            }

            if (result != "") { return true; }
            else { return false; }
        }

        private string DataAtual()
        {
            string dataAtual = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

            return dataAtual;
        }
    }
}
