using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;

namespace AppCaixaFerramentas.Models
{
    class Funcionario
    {
        private static string conn = "";
        private string senha;

        public string Senha
        {
            get { return senha; }
            set { senha = Encode(value); }
        }
        public int id { get; set; }
        public int supervisorId { get; set; }
        public string nomeFuncionario { get; set; }
        public string email { get; set; }
        public string setor { get; set; }
        public string cargo { get; set; }

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

        public bool Login(Funcionario funcionario)
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
    }
}
