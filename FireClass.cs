using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using SignalRChat;
namespace SignalRChat
{
    public class FireClass
    {
        public static IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "DHdCycBBIjWSrIvvuUmpNExO9ZdXxNHpuwR0K4k7",
            BasePath = "https://chathubgeca-default-rtdb.firebaseio.com/"
        };
        public IFirebaseClient client = new FireSharp.FirebaseClient(config);

        public void FireRegister(User u)
        {
            client.PushAsync("users", u);
        }
    }
}