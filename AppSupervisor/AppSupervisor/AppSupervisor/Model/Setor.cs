using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppSupervisor.Model
{
    class Setor
    {
        private static string conn = @"server=sql.freedb.tech;port=3306;database=freedb_ferramentasdb;user id=freedb_mobileUser;password=8XJ@vc4g@VW6&pY;charset=utf8";
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
