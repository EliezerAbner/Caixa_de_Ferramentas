using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Text;

namespace AppCaixaFerramentas.Models
{
    class Conexao
    {
        protected static string conn;

        public Conexao()
        {
            LoadToClass();
        }

        private void LoadToClass()
        {
            string json = ReadJson();
            JObject jsonObject = JObject.Parse(json);

            var result = jsonObject["conn"]?.ToString();

            conn = result;
        }

        private string ReadJson()
        {
            Assembly assembly = Assembly.GetExecutingAssembly();

            string jsonPath = "AppCaixaFerramentas.dbConn.dbConn.json";

            using (Stream stream = assembly.GetManifestResourceStream(jsonPath))
            {
                if (stream != null)
                {
                    using (StreamReader sr = new StreamReader(stream))
                    {
                        string json = sr.ReadToEnd();
                        return json;
                    }
                }
                else
                {
                    throw new FileNotFoundException($"Resource not found: {jsonPath}");
                }
            }
        }
    }
}
