using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace SignalRChat
{
    public class ChatHub : Hub
    {
        static List<Users> ConnectedUsers = new List<Users>();
        static List<Messages> CurrentMessage = new List<Messages>();

        public List<List<string>> Notifications = new List<List<string>>();
        public List<List<string>> RegisteredUsers = new List<List<string>>();
        public List<List<string>> RegisterdGroups = new List < List<string> >();
        ConnClass ConnC = new ConnClass();

        public void Connect(string userName, string userBadge, string userEnrollNo, string userDepartment, string userEmail)
        {
            var id = Context.ConnectionId;



            if (ConnectedUsers.Count(x => x.ConnectionId == id) == 0)
            {
                string UserImg = GetUserImage(userName);
                string logintime = DateTime.Now.ToString();

                ConnectedUsers.Add(new Users { ConnectionId = id, UserName = userName, UserImage = UserImg, LoginTime = logintime, Badge = userBadge, EnrollNo = userEnrollNo, Department = userDepartment, Email = userEmail });

                //send to caller
                Clients.Caller.onConnected(id, userName, ConnectedUsers, CurrentMessage);
                loadRegisteredUsers();
             
            }
        }
        public void loadRegisteredUsers()
        {
            string GetRegisteredUsersQuery = "SELECT UserName,EnrollNo FROM tbl_users";
            RegisteredUsers = ConnC.GetAllData(GetRegisteredUsersQuery);
            Clients.Caller.loadRegisteredUsers(RegisteredUsers);
        }
        public void loadRegisteredGroups()
        {
            string GetRegisteredGroupsQuery = "select * from tbl_groups";
            RegisterdGroups = ConnC.GetAllGroups(GetRegisteredGroupsQuery);
            Clients.Caller.loadRegisteredGroups(RegisterdGroups);
        }
        public void loadRegisteredTeachers()
        {

        }

        public void showNotification()
        {
           string GetNotificationQuery = "select * from notify";
            Console.Write("Method called.1");
            Notifications = ConnC.GetAllDataFromDB(GetNotificationQuery, ConnC.ntf);
            //Console.Write("Method called.1");
            //int count  = ConnC.GetRowNo(GetNotificationQuery);
            Clients.Caller.showNotification(Notifications);

        }
        public void CreateNotification()
        {
            string author = "admin";
            string Message = "First Notification";
            
            int GON = 1;
            bool a = ConnC.CreateNotif(author, Message,GON);
            Console.Write("Method called.");
            Clients.All.NCreated();
        }

        public void SendMessageToAll(string userName, string message, string time)
        {
            string UserImg = GetUserImage(userName);
            // store last 100 messages in cache
            AddMessageinCache(userName, message, time, UserImg);

            // Broad cast message
            Clients.All.messageReceived(userName, message, time, UserImg);

        }

        private void AddMessageinCache(string userName, string message, string time, string UserImg)
        {
            CurrentMessage.Add(new Messages { UserName = userName, Message = message, Time = time, UserImage = UserImg });

            if (CurrentMessage.Count > 100)
                CurrentMessage.RemoveAt(0);

        }

        // Clear Chat History
        public void clearTimeout()
        {
            CurrentMessage.Clear();
        }
        public string GetUserName(string enroll)
        {
            loadRegisteredUsers();
            string rstr = "";
            for (int i = 0; i < RegisteredUsers.Count; i++)
            {
                for (int j = 0; j < RegisteredUsers[i].Count; j++)
                {
                    if (enroll.Equals(RegisteredUsers[i][j]))
                    {
                        // Clients.All.alertMe(RegisteredUsers[i]);
                        rstr = RegisteredUsers[i][0];
                    }
                }

            }
            return rstr;

        }
       

        public string GetUserImage(string username)
        {
            string RetimgName = "images/dummy.png";
            try
            {
                string query = "select Photo from tbl_Users where UserName='" + username + "'";
                string ImageName = ConnC.GetColumnVal(query, "Photo");

                if (ImageName != "")
                    RetimgName = "images/DP/" + ImageName;
            }
            catch (Exception ex)
            { }
            return RetimgName;
        }

        public override System.Threading.Tasks.Task OnDisconnected(bool stopCalled)
        {
            var item = ConnectedUsers.FirstOrDefault(x => x.ConnectionId == Context.ConnectionId);
            if (item != null)
            {
                ConnectedUsers.Remove(item);

                var id = Context.ConnectionId;
                Clients.All.onUserDisconnected(id, item.UserName);

            }
            return base.OnDisconnected(stopCalled);
        }

        public void CreateTableFor(string table_name, string fromUserEN, string toUserEN)
        {

            string CreateTableQuery = "CREATE TABLE " + table_name + "(time varchar(30), message varchar(20),c" + fromUserEN + " boolean,c" + toUserEN + " boolean)";

            ConnC.ExecuteQuery(CreateTableQuery);


        }
      
        public void AddMessageTo(string table_name, string message, string fromUserEN, string toUserEN)
        {

            try
            {

                string AddMessageQuery = "insert into " + table_name + "(time,message,c" + fromUserEN + ",c" + toUserEN + ") values('" + DateTime.Now.ToString() + "','" + message + "','" + 0 + "','" + 1 + "')";

                ConnC.ExecuteQuery(AddMessageQuery);



            }
            catch (Exception e)
            {
                ConnC.con.Close();
                CreateTableFor(table_name, fromUserEN, toUserEN);
                AddMessageTo(table_name, message, fromUserEN, toUserEN);
            }
        }

        public void CallAddMessegeTo(string message, Users fromUser,Users toUser)
        {

            string fromUserEnrollNo = fromUser.EnrollNo;
            string toUserEnrollNo = toUser.EnrollNo;


    

            //tablename for this conversation
            string table_name;
            try
            {
                table_name = fromUser.TableNameFor[toUser.EnrollNo];
            }
            catch (Exception e)
            {

                string[] arr = new string[] { fromUserEnrollNo, toUserEnrollNo };
                Array.Sort(arr);
                fromUser.TableNameFor.Add(toUser.EnrollNo, "f" + arr[0] + "to" + arr[1]);
                table_name = fromUser.TableNameFor[toUser.EnrollNo];
            }
            AddMessageTo(table_name, message, fromUserEnrollNo, toUserEnrollNo);

        }

        public void SendPrivateMessage(string toUserId, string message)
        {

            string fromUserId = Context.ConnectionId;

            var toUser = ConnectedUsers.FirstOrDefault(x => x.ConnectionId == toUserId);
            var fromUser = ConnectedUsers.FirstOrDefault(x => x.ConnectionId == fromUserId);
            if (toUser != null && fromUser != null)
            {
                string CurrentDateTime = DateTime.Now.ToString();
                string UserImg = GetUserImage(fromUser.UserName);
                // send to 
                Clients.Client(toUserId).sendPrivateMessage(fromUserId, fromUser.UserName, message, UserImg, CurrentDateTime);

                // send to caller user
                Clients.Caller.sendPrivateMessage(toUserId, fromUser.UserName, message, UserImg, CurrentDateTime);
            }

        }
        public void LoadPrivateChat(string toEnrollNo, string fromEnrollNo)
        {
            List<List<string>> Chat = new List<List<string>>();
            ConnClass Conn = new ConnClass();
            bool check = false;

            try
            {
               
                string[] arr = new string[] { fromEnrollNo, toEnrollNo };
                string table_name = "f" + fromEnrollNo + "to" + toEnrollNo;
                Array.Sort(arr);
                string new_table_name = "f" + arr[0] + "to" + arr[1];
                if (new_table_name == table_name)
                    check = true;
                else
                    check = false;

                  
                string GetPrevoiuschat = "SELECT * FROM " +new_table_name;

                Chat = Conn.GetAllMessage(GetPrevoiuschat);
              
                Clients.Caller.loadChat(Chat,check, GetUserName(toEnrollNo));
                
              
            }
            catch(MySql.Data.MySqlClient.MySqlException ex)
            {
                Console.WriteLine(ex.ToString());
                
            }
            finally
            {
               
                
            }
           

        }
    }
}