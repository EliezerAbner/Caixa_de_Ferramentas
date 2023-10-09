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
                return builder.ToString();
            }
        }

        public bool FazerLogin()
        {
            string sql = "";
            bool loginAutorizado;

            using(MySqlConnection con = new MySqlConnection(conn))
            {
                con.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql,con))
                {
                    loginAutorizado = Convert.ToBoolean(cmd.ExecuteScalar());
                }
                con.Close();
            }
            return loginAutorizado;
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
