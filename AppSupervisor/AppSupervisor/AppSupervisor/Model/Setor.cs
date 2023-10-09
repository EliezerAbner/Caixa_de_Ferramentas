using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppSupervisor.Model
{
    class Setor : Conexao
    { 
        public int SetorId { get; set; }
        public string NomeSetor { get; set; }

        public List<Setor> BuscarSetor()
        {
            List<Setor> setores = new List<Setor>();
            string sql = "SELECT * FROM setor";

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                con.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Setor setor = new Setor()
                            {
                                SetorId = reader.GetInt32(0),
                                NomeSetor = reader.GetString(1)
                            };

                            setores.Add(setor);
                        }
                    }
                }
                con.Close();
            }
            return setores;
        }
    }
}
