using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppCaixaFerramentas.Models
{
    class Ferramenta
    {
        private static string conn = @"server=sql.freedb.tech;port=3306;database=freedb_ferramentasdb;user id=freedb_mobileUser;password=8XJ@vc4g@VW6&pY;charset=utf8";
        public int Id { get; set; }
        public int FuncionarioId { get; set; }
        public string NomeFerramenta { get; set; }
        public string Tipo { get; set; }
        public string Codigo { get; set; }
        public bool Verificado { get; set; }

        public static List<Ferramenta> listaFerramentas(int funcionarioId)
        {
            List<Ferramenta> caixaFerramentas = new List<Ferramenta>();
            string sql = "SELECT * FROM ferramenta WHERE funcionarioId="+ funcionarioId + "";

            using (MySqlConnection con = new MySqlConnection(conn))
            {
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
                                FuncionarioId = reader.GetInt32(1),
                                NomeFerramenta = reader.GetString(2),
                                Tipo = reader.GetString(3),
                                Codigo = reader.GetString(4),
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

        public void FazerVerificacao(int ferramentaId, int funcionarioId)
        {
            try
            {
                using (MySqlConnection con = new MySqlConnection(conn))
                {
                    string sql = "";
                    con.Open();
                    using (MySqlCommand cmd = new MySqlCommand(sql, con))
                    {
                        cmd.ExecuteNonQuery();
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
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
