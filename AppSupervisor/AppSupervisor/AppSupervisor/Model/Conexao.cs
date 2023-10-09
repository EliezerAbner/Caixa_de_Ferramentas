using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Reflection;
using System.Runtime.Serialization.Json;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace AppSupervisor.Model
{
    class Conexao
    {
        protected static string conn;

        public Conexao() 
        {
            LoadToClass();
        }

        public void LoadToClass()
        {
            string json = ReadJson();
            JObject jsonObject = JObject.Parse(json);

            var teste = jsonObject["conn"]?.ToString();

            conn = teste;
        }

        private string ReadJson() 
        {
            Assembly assembly = Assembly.GetExecutingAssembly();

            string jsonPath = "AppSupervisor.dbConn.dbConn.json";

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
