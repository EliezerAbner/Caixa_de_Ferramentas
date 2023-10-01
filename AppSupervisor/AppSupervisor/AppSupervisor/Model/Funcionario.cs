using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;

namespace AppSupervisor.Model
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
        public int SetorId { get; set; }
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

        public void CadastrarFuncionario(Funcionario funcionario)
        {
            int idObtido;

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                string sql = "INSERT INTO funcionario (supervisorId, nomeFuncionario, email, setorId, cargo) VALUES ('" + funcionario.SupervisorId + "', '" + funcionario.NomeFuncionario + "', '" + funcionario.Email + "', '" + funcionario.SetorId + "', '" + funcionario.Cargo + "')";
                con.Open();

                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    cmd.ExecuteNonQuery();
                }
                con.Close();
            }

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                string sql = "SELECT funcionarioId FROM funcionario WHERE email='"+funcionario.Email+"'";
                con.Open();

                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    idObtido =  (int)cmd.ExecuteScalar();
                }
                con.Close();
            }

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                string sql = "INSERT INTO loginFuncionario (funcionarioId, senha) VALUES ("+idObtido+", '"+funcionario.senha+"')";
                con.Open();

                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    cmd.ExecuteNonQuery();
                }
                con.Close();
            }
        }

        public void Editar(Funcionario funcionario)
        {
            using (MySqlConnection con = new MySqlConnection(conn))
            {
                string sql = "UPDATE funcionario SET nomeFuncionario='" + funcionario.NomeFuncionario + "', email='" + funcionario.Email + "', cargo='" + funcionario.Cargo + "' WHERE funcionarioId="+funcionario.Id+"";
                con.Open();

                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    cmd.ExecuteNonQuery();
                }
                con.Close();
            }
        }

        public List<Funcionario> ListaFuncionarios(int idSupervisor)
        {
            List<Funcionario> funcionarios = new List<Funcionario>();
            string sql = "SELECT * FROM funcionario WHERE supervisorId="+idSupervisor+"";

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                con.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Funcionario funcionario = new Funcionario()
                            {
                                Id = reader.GetInt32(0),
                                SupervisorId = reader.GetInt32(1),
                                NomeFuncionario = reader.GetString(2),
                                Email = reader.GetString(3),
                                SetorId = reader.GetInt32(4),
                                Cargo = reader.GetString(5)
                            };
                            funcionarios.Add(funcionario);
                        }
                    }
                }
                con.Close();
            }

            return funcionarios;
        }
    }
}
