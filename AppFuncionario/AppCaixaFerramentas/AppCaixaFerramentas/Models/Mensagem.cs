using System;
using System.Collections.Generic;
using System.Text;
using MySqlConnector;

namespace AppCaixaFerramentas.Models
{
    class Mensagem : Conexao
    {
        public int MsgId { get; set; }
        public string Msg { get; set; }
        public DateTime MsgData { get; set; }
        public DateTime Expiracao { get; set; }

        public Mensagem NovaMensagem()
        {
            Mensagem msg = new Mensagem();

            using (MySqlConnection con = new MySqlConnection(conn))
            {
                string sql = "SELECT mensagem FROM msgDoDia WHERE supervisorId=1";
                con.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    msg.Msg = Convert.ToString(cmd.ExecuteScalar());
                }
                con.Close();
            }

            return msg;
        }
    }
}
