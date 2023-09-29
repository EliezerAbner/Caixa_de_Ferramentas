﻿using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;

namespace AppCaixaFerramentas.Models
{
    class Funcionario
    {
        private static string conn = @"server=sql.freedb.tech;port=3306;database=freedb_ferramentasdb;user id=freedb_mobileUser;password=8XJ@vc4g@VW6&pY;charset=utf8";
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
