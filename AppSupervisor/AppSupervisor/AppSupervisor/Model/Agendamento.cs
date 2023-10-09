using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;

namespace AppSupervisor.Model
{
    class Agendamento : Conexao
    {
        public int AgendamentoId { get; set; }
        public int SupervisorId { get; set; }
        public int Periodo { get; set; }
        public string DataInicial { get; set; }
        public string DataFinal { get; set; }

        public List<Agendamento> ListaAgendamentos(int idSupervisor)
        {
            List<Agendamento> agendamentos = new List<Agendamento>();

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                string sql = $"SELECT * FROM agendamento WHERE supervisorId={idSupervisor}";
                con.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                   using (MySqlDataReader reader = cmd.ExecuteReader())
                   {
                        while (reader.Read())
                        {
                            this.AgendamentoId = reader.GetInt32(0);
                            this.SupervisorId = reader.GetInt32(1);
                            this.DataInicial = Convert.ToString(reader.GetDateTime(2));
                            this.DataFinal = Convert.ToString(reader.GetDateTime(3));
                        }
                        agendamentos.Add(this);
                   }
                }
                con.Close();
            }

            return agendamentos;
        }

        public void NovoAgendamento()
        {
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                string sql = $"INSERT INTO agendamento (supervisorId, dataInicial, dataFinal) VALUES ({this.SupervisorId},'{this.DataInicial}','{this.DataFinal}')";

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
