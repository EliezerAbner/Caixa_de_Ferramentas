using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppCaixaFerramentas.Models
{
    class Ferramenta : Conexao
    {
        public int Id { get; set; }
		public int CaixaFerramentaId { get; set; }
		public string NomeFerramenta { get; set; }
        public string Codigo { get; set; }
		public string Descricao { get; set; }
		public bool Verificado { get; set; }

        public List<Ferramenta> listaFerramentas(int funcionarioId)
        {
            List<Ferramenta> caixaFerramentas = new List<Ferramenta>();
            int caixaFerramentaId;

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                string sql = $"SELECT caixaFerramentasId FROM caixaFerramentas WHERE funcionarioId={funcionarioId}";
				con.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    caixaFerramentaId = (int)cmd.ExecuteScalar();
                }
                con.Close();
            }

			using (MySqlConnection con = new MySqlConnection(conn))
            {
				string sql = $"SELECT * FROM ferramenta WHERE caixaFerramentasId={caixaFerramentaId}";
				con.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Ferramenta ferramenta = new Ferramenta()
                            {
                                Id = reader.GetInt16(0),
                                CaixaFerramentaId = reader.GetInt32(1),
                                NomeFerramenta = reader.GetString(2),
                                Codigo = reader.GetString(3),
                                Descricao = reader.GetString(4),
                                Verificado = false
                            };
                            caixaFerramentas.Add(ferramenta);
                        }
                    }
                }
                con.Close();
                return caixaFerramentas;
            }
        }

        public string BuscarFerramenta(string codigo) 
        {
            try
            {
                string ferramentaId; 
                using (MySqlConnection con = new MySqlConnection(conn))
                {
                    string sql = "";
                    con.Open();
                    using(MySqlCommand cmd = new MySqlCommand(sql,con))
                    {
                        ferramentaId = Convert.ToString(cmd.ExecuteScalar());
                    }
                    con.Close();
                }
                return ferramentaId;

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
