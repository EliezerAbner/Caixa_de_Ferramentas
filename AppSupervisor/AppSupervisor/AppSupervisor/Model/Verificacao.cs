using System;
using System.Collections.Generic;
using System.Text;
using MySqlConnector;

namespace AppSupervisor.Model
{
	class Verificacao : Conexao
	{
        public string NomeFuncionario { get; set; }
        public string NumFerramentas { get; set; }
        public string FerramVerificadas { get; set; }

        public List<Verificacao> listaVerificacoes(int supervisorId, string dataInicial, string dataFinal)
        {
            List<Funcionario> func = new List<Funcionario>();
            List<Verificacao> verificacoes = new List<Verificacao>();
            
            Funcionario f = new Funcionario();
            func = f.ListaFuncionarios(supervisorId);

            foreach (Funcionario funcionario in func)
            {
                int caixaId;

                using (MySqlConnection con = new MySqlConnection(conn))
                {
                    string sql = $"SELECT caixaFerramentasId FROM caixaFerramentas WHERE funcionarioId={funcionario.Id}";
                    con.Open();
                    using (MySqlCommand cmd = new MySqlCommand(sql, con))
                    {
                        caixaId = (int)cmd.ExecuteScalar();
                    }
                    con.Close();
                }

                using (MySqlConnection con = new MySqlConnection(conn))
                {
                    string sql = "SELECT f.nomeFuncionario, " +
                                 "(SELECT COUNT(ft.ferramentaId) FROM ferramenta ft WHERE ft.caixaFerramentasId IN(SELECT cf.caixaFerramentasId FROM caixaFerramentas cf WHERE cf.funcionarioId = f.funcionarioId)) AS FerramentaCount, " +
                                 "(SELECT COUNT(verificacao.verificacaoId) FROM verificacao WHERE verificacao.funcionarioId = f.funcionarioId AND verificacao.dataVerificacao >= '2023-10-09 00:00:00' AND verificacao.dataVerificacao <= '2023-10-13 17:00:00') AS VerificacaoCount " +
                                 "FROM funcionario f " +
                                 "WHERE f.funcionarioId = 3";

                    con.Open();
                    using (MySqlCommand cmd = new MySqlCommand(sql, con))
                    {
                        using (MySqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                this.NomeFuncionario = reader.GetString(0);
                                this.NumFerramentas = reader.GetString(1);
                                this.FerramVerificadas = reader.GetString(2);
                            }
                        }
                        verificacoes.Add(this);
                    }
                    con.Close();
                }
            }
            return verificacoes;
        }
    }
}
