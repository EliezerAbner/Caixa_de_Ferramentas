using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppSupervisor.Model
{
    class Ferramenta
    {
        private static string conn = @"server=sql.freedb.tech;port=3306;database=freedb_ferramentasdb;user id=freedb_mobileUser;password=8XJ@vc4g@VW6&pY;charset=utf8";
        public int Id { get; set; }
        public int CaixaFerramentaId { get; set; }
        public string NomeFerramenta { get; set; }
        public string Codigo { get; set; }
        public string Descricao { get; set; }

        public int CadastrarCaixa(int funcionarioId, string codigo)
        {
            int idCaixa;

            using (MySqlConnection connection = new MySqlConnection(conn))
            {
                string sql = $"INSERT INTO caixaFerramentas(funcionarioId, codigo) VALUES({funcionarioId},'{codigo}')";
                connection.Open();
                using(MySqlCommand cmd = new MySqlCommand(sql, connection))
                {
                    cmd.ExecuteNonQuery();
                }
                connection.Close();
            }

            using (MySqlConnection connection = new MySqlConnection(conn))
            {
                string sql = $"SELECT caixaFerramentasId FROM caixaFerramentas WHERE funcionarioId={funcionarioId}";
                connection.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, connection))
                {
                    idCaixa = (int)cmd.ExecuteScalar();
                }
                connection.Close();
            }

            return idCaixa;
        }

        public void CadastrarFerramenta(Ferramenta ferramenta)
        {
            using (MySqlConnection connection = new MySqlConnection(conn))
            {
                string sql = $"INSERT INTO ferramenta(caixaFerramentasId, nome, codigo, descricao) VALUES({ferramenta.CaixaFerramentaId},'{ferramenta.NomeFerramenta}', '{ferramenta.Codigo}', '{ferramenta.Descricao}')";
                connection.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, connection))
                {
                    cmd.ExecuteNonQuery();
                }
                connection.Close();
            }
        }
    }
}
