﻿using MySqlConnector;
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
            string funcionarioId, loginId;

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                string sql = $"SELECT funcionarioId FROM funcionario WHERE email='{this.Email}'";

                con.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    funcionarioId = Convert.ToString(cmd.ExecuteScalar());
                }
                con.Close();
            }

            if (funcionarioId != "")
            {
                using (MySqlConnection con = new MySqlConnection(conn))
                {
                    string sql = $"SELECT loginFuncionarioId FROM loginFuncionario WHERE senha='{this.Senha}' AND funcionarioId={funcionarioId}";
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
