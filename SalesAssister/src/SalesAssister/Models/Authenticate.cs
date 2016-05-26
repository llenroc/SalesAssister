using Microsoft.AspNet.Mvc;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SalesAssister.Models;

namespace SalesAssister.Models
{
    public class Authenticate
    {
        public string message { get; set; }
        public string type { get; set; }
        public string email { get; set; }
        public int auth_type { get; set; }
        
        public void Acceptto()
        {
            var client = new RestClient("https://mfa.acceptto.com/api/v9/authenticate_with_options");

            var request = new RestRequest("https://mfa.acceptto.com/api/v9/authenticate_with_options?message=My+Application+is+wishing+to+authorize&type=Login&email=bulbulir11@hotmail.com&auth_type=1&uid=06ec7d21cb4b89214a08ea1b31c7d6fbc230bfd1d7dfcf95bee1cd056695ef49&secret=89fd1fc3bf714664023e05563a4859210ab868c702631f9253e96c9eb8e1cf4f", Method.POST);

            //request.AddParameter("message", "My+Application+is+wishing+to+authorize");
            //request.AddParameter("type", "Login");
            //request.AddParameter("email", "bulbulir11@hotmail.com");
            //request.AddParameter("auth_type", 1);
            //request.AddParameter("uid", "06ec7d21cb4b89214a08ea1b31c7d6fbc230bfd1d7dfcf95bee1cd056695ef49");
            //request.AddParameter("secret", "89fd1fc3bf714664023e05563a4859210ab868c702631f9253e96c9eb8e1cf4f");

            var response = client.Execute(request);

            Console.WriteLine(response.Content);
            Console.WriteLine(request);
        }
    }
}
