using System;
using System.Collections.Generic;
using System.Text;
using MySqlConnector;

namespace AppSupervisor.Model
{
	class Mensagem : Conexao
	{
        private string dataInicial;
        private string dataFinal;
        public int MensagemId { get; set; }
        public int SupervisorId { get; set; }
        public string Msg { get; set; }
		public string DataInicial
		{
			get { return dataInicial; }
			set { dataInicial = ConversorDatas(value); }
		}
		public string DataFinal
		{
			get { return dataFinal; }
			set { dataFinal = ConversorDatas(value); }
		}

		private string ConversorDatas(string valorAntigo)
		{
			DateTime va = Convert.ToDateTime(valorAntigo);
			string valorConvertido = va.ToString("yyyy-MM-dd HH:mm:ss");

			return valorConvertido;
		}

        public void NovaMensagem()
        {
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                string sql = $"INSERT INTO msgDoDia (supervisorId, mensagem, dataInicial, dataFinal) VALUES ({this.SupervisorId},`{this.Msg}`,`{this.DataInicial}`,`{this.DataFinal}`)";
                con.Open();
                using (MySqlCommand cmd = new MySqlCommand(Msg, con)) 
                {
                    cmd.ExecuteNonQuery();
                }
                con.Close();
            }
        }

		public List<Mensagem> ListaMensagens(int supervisorId)
		{
			List<Mensagem> lista =new List<Mensagem>();

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                string sql = $"SELECT * FROM msgDoDia WHERE supervisorId={supervisorId}";

                con.Open();
				using (MySqlCommand cmd = new MySqlCommand(sql, con))
				{
                    using (MySqlDataReader  reader = cmd.ExecuteReader()) 
                    {
                        while (reader.Read())
                        {
                            this.MensagemId = reader.GetInt32(0);
                            this.SupervisorId = reader.GetInt32(1);
                            this.Msg = reader.GetString(2);
                            this.DataInicial = reader.GetString(3);
                            this.DataFinal = reader.GetString(4);
                        }
                        lista.Add(this);
                    }
				}
				con.Close();
            }
            return lista;
		}
	}
}
