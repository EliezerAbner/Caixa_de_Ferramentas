using AppCaixaFerramentas.Models;
using System;
using System.Collections.Generic;
using System.Text;
using MySqlConnector;
using System.Buffers.Text;
using System.Security.Cryptography;

namespace AppCaixaFerramentas.Controllers
{
    class MySqlController
    {
        private static string conn = @"server=sql.freedb.tech;port=3306;database=freedb_matadoresDePorco;user id=freedb_user001;password=pk6rmPza!vD4MGY;charset=utf8";

        public bool login(string email, string senha)
        {
            string sql = "SELECT * FROM login WHERE email=@email and senha=@senha";
            Console.WriteLine(sql);

            return true;
        } 

        public static List<Ferramenta> listaFerramentas(int funcionarioId)
        {
            List<Ferramenta> caixaFerramentas = new List<Ferramenta>();
            string sql = "SELECT * FROM ferramenta WHERE funcionarioId=@funcionarioId";

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                con.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Ferramenta ferramenta = new Ferramenta()
                            {
                                id = reader.GetInt16(0),
                                funcionarioId = reader.GetInt32(1),
                                nomeFerramenta = reader.GetString(2),
                                tipo = reader.GetString(3),
                                codigo = reader.GetString(4)
                            };
                            caixaFerramentas.Add(ferramenta);
                        }
                    }
                }
                con.Close();
                return caixaFerramentas;
            }
        }

        public Mensagem MensagemDoDia()
        {
            try
            {
                string sql = "SELECT * FROM agendamento WHERE id=MAX(id)";
                Mensagem msg = new Mensagem();

                MySqlConnection con = new MySqlConnection(conn);
                con.Open();
                MySqlCommand cmd = new MySqlCommand(sql, con);
                MySqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    msg.msgId = reader.GetInt32(0);
                    msg.mensagem = reader.GetString(1);
                    msg.msgData = reader.GetDateTime(2);
                }
                con.Close();
                return msg;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        
        public bool Login(string email, string senha)
        {
            string cripto = encode(senha);

            string sql = "SELECT * FROM login WHERE email="+ email +" AND senha="+ cripto+"";
            MySqlConnection con = new MySqlConnection (conn);
            con.Open();
            MySqlCommand cmd = new MySqlCommand (sql, con);
            int result = (int)cmd.ExecuteScalar();
            con.Close();
            return true;
        }

        static string encode(string senha)
        {
            using(SHA256 sha256Hash = SHA256.Create())
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

        //mandar verificações

        //??
    }
}
