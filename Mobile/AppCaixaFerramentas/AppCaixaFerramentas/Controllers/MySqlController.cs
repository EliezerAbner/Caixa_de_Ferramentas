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
        
     

        

        //mandar verificações

        //??
    }
}
