using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;

namespace AppCaixaFerramentas.Models
{
    class Funcionario : Conexao
    {
        private string senha;

        public string Senha
        {
            get { return senha; }
            set { senha = Encode(value); }
        }
        public int Id { get; set; }
        public int SupervisorId { get; set; }
        public string NomeFuncionario { get; set; }
        public string Email { get; set; }
        public string Setor { get; set; }
        public string Cargo { get; set; }

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

        public bool Login()
        {
            try
            {
                bool loginAutorizado = false;
                using (MySqlConnection con = new MySqlConnection(conn))
                {
                    string sql = "";

                    con.Open();
                    using (MySqlCommand cmd = new MySqlCommand(sql, con))
                    {
                        loginAutorizado = Convert.ToBoolean(cmd.ExecuteScalar());
                    }
                    con.Close();
                }
                return loginAutorizado;
            }
            catch (Exception ex)
            {
                throw new Exception (ex.Message);
            }
        }

        public Funcionario buscarFuncionario(string email)
        {
            string sql = $"SELECT * FROM funcionario WHERE email='{email}'";
            Funcionario funcionario = new Funcionario();


			using (MySqlConnection con = new MySqlConnection(conn))
            {
                con.Open();
                using (MySqlCommand cmd = new MySqlCommand (sql, con))
                {
                    using (MySqlDataReader reader =  cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            funcionario.Id = reader.GetInt32(0);
                            funcionario.NomeFuncionario = reader.GetString("nomeFuncionario");
                        }
                    }
                }
                con.Close();
            }
            return funcionario;
        }
    }
}
