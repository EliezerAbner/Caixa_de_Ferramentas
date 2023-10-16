using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;

namespace AppSupervisor.Model
{
    class Supervisor : Conexao
    {
        private string senha;
        public int SupervisorId { get; set; }
        public string Nome { get; set; }
        public string  Setor { get; set; }
        public string Email { get; set; }
        public string Senha
        {
            get { return senha; }
            set { senha = Encode(value); }
        }

        private static string Encode(string senha)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(senha));

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                string teste = builder.ToString();
                return teste;
            }
        }

        public bool FazerLogin()
        {
			string supervisorId, loginId;

			using (MySqlConnection con = new MySqlConnection(conn))
			{
				string sql = $"SELECT supervisorId FROM supervisor WHERE email='{this.Email}'";

				con.Open();
				using (MySqlCommand cmd = new MySqlCommand(sql, con))
				{
					supervisorId = Convert.ToString(cmd.ExecuteScalar());
				}
				con.Close();
			}

			if (supervisorId != "")
			{
				using (MySqlConnection con = new MySqlConnection(conn))
				{
					string sql = $"SELECT loginSupervisorId FROM loginSupervisor WHERE senha='{this.Senha}' AND supervisorId={supervisorId}";
					con.Open();
					using (MySqlCommand cmd = new MySqlCommand(sql, con))
					{
						loginId = Convert.ToString(cmd.ExecuteScalar());
					}
					con.Close();
				}

				if (loginId != "")
				{
					return true;
				}
				else { return false; }
			}
			else
			{
				return false;
			}
		}

        public Supervisor BuscarNome(string email)
        {
            string sql = $"SELECT * FROM supervisor WHERE email='{email}'";

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                con.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            this.SupervisorId = reader.GetInt32(0);
                            this.Nome = reader.GetString(1);
                        }
                    }
                }
                con.Close();
            }
            return this;
        }
    }
}
