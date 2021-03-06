using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Threading;
using System.Threading.Tasks;
namespace SignalRChat
{
    public class ChatHub : Hub
    {
        static List<Users> ConnectedUsers = new List<Users>();
        public List<List<string>> Notifications = new List<List<string>>();
        public List<List<string>> RegisteredUsers = new List<List<string>>();
        public List<List<string>> RegisterdGroups = new List < List<string>>();
        public List<List<string>> RegisteredUsers1 = new List<List<string>>();
        public List<List<string>> RegisteredTeachers = new List<List<string>>();
        ConnClass ConnC = new ConnClass();

        public  void  Connect(string userName, string userBadge, string userEnrollNo, string userDepartment, string userEmail)
        {
            var id = Context.ConnectionId;



            if (ConnectedUsers.Count(x => x.ConnectionId == id) == 0)
            {
                string UserImg =  GetUserImage(userName);
                string logintime = DateTime.Now.ToString();
                if(userBadge.Equals("Student"))
                ConnectedUsers.Add(new Student { ConnectionId = id, UserName = userName, UserImage = UserImg, LoginTime = logintime, Badge = userBadge, EnrollNo = userEnrollNo, Department = userDepartment, Email = userEmail });
                else
                ConnectedUsers.Add(new Teacher { ConnectionId = id, UserName = userName, UserImage = UserImg, LoginTime = logintime, Badge = userBadge, EnrollNo = userEnrollNo, Department = userDepartment, Email = userEmail });

                //send to caller
                Clients.Caller.onConnected(id, userName,userEnrollNo);
                loadRegisteredUsers(userEnrollNo);
             
            }
        }
        public void loadRegisteredUsers(string enrollno)
        {
            string GetRegisteredUsersQuery = "SELECT UserName,EnrollNo,Badge,Photo FROM tbl_users where EnrollNo <> '"+enrollno+"' and Badge='Student'";
            RegisteredUsers = ConnC.GetAllData(GetRegisteredUsersQuery);
            Clients.Caller.loadRegisteredUsers(RegisteredUsers);

        }
        public void loadRegisteredUsers1()
        {
            string GetRegisteredUsersQuery = "SELECT UserName,EnrollNo,Badge FROM tbl_users";
            RegisteredUsers = ConnC.GetAllData(GetRegisteredUsersQuery);
            //Clients.Caller.loadRegisteredUsers(RegisteredUsers);

        }
        public void loadRegisteredGroups(string enrollno)
        {
            foreach (string groupid in ConnC.GetFullColumn("select GroupId from groupsof_" + enrollno.ToLower(), ConnC.con))
            {
                string GetRegisteredGroupsQuery = "SELECT * from tbl_groups where GroupID='" + groupid + "'";
                RegisterdGroups.Add(ConnC.GetAllGroups(GetRegisteredGroupsQuery)[0]);
            }

            Clients.Caller.loadRegisteredGroups(RegisterdGroups);
        }
        public void loadRegisteredTeachers()
        {
            string GetRegisteredTeachersQuery = "SELECT * from tbl_users where Badge<>'Student' and Badge<>'CR'";
            RegisteredTeachers=ConnC.GetAllDataFromDB(GetRegisteredTeachersQuery,ConnC.con);
            Clients.Client(Context.ConnectionId).loadRegisteredTeachers(RegisteredTeachers);
        }

        public void ShowNotification()
        {
            // string GetNotificationQuery = "select Message,Creator,FromDate,ToDate from notify";
            string GetNotificationQuery = "SELECT * FROM notify";
            Console.Write("Method called.1");
            Notifications = ConnC.GetAllDataFromDB(GetNotificationQuery, ConnC.ntf);
            //Console.Write("Method called.1");
            //int count  = ConnC.GetRowNo(GetNotificationQuery);
            //Clients.Caller.showNtf(Notifications);
            
            Clients.Caller.showNtf(Notifications);

        }
        public void CreateNotification(string msg,string creator,string creatorEnrollNo,string todate)
        { 

            bool a = ConnC.CreateNotif(msg,creator,creatorEnrollNo,todate);
            Console.WriteLine("CreateNotification Method called from ChatHub.");
            Clients.All.ntfCreated();
        }

      

       

        // Clear Chat History
       
        public string GetUserName(string enroll)
        {
            loadRegisteredUsers1();
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
        public string GetGroupName(string grpid,string enrollno)
        {
            loadRegisteredUsers1();
            string rstr = "";
            for (int i = 0; i < RegisterdGroups.Count; i++)
            {
                for (int j = 0; j < RegisterdGroups[i].Count; j++)
                {
                    if (grpid.Equals(RegisterdGroups[i][j]))
                    {
                        // Clients.All.alertMe(RegisteredUsers[i]);
                        rstr = RegisterdGroups[i][0];
                    }
                }

            }
            return rstr;

        }
       

        public  string GetUserImage(string username)
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

            string CreateTableQuery = "CREATE TABLE " + table_name + "(time varchar(30), message text,c" + fromUserEN + " boolean,c" + toUserEN + " boolean)";

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


        public void CallAddMessegeTo(string message, string fromUserName, string fromUserEnrollNo, string toUserEnrollNo)
        {
            
            Console.WriteLine("Reached to calladdmessagetos");
            string[] arr = new string[] { fromUserEnrollNo, toUserEnrollNo };
            Array.Sort(arr);
            string table_name = "f" + arr[0] + "to" + arr[1];

            AddMessageTo(table_name, message, fromUserEnrollNo, toUserEnrollNo);
           


        }

        
        public  void sendPrivateMessage(string fromUserName, string fromUserEnroll,string toUserEnroll , string message)
        {

           
            if (toUserEnroll != null && fromUserEnroll != null)
            {
                string CurrentDateTime = DateTime.Now.ToString();
                
               CallAddMessegeTo(message, fromUserName, fromUserEnroll, toUserEnroll);
                Clients.Client(Context.ConnectionId).addMessageToPrivateChat(message, fromUserName, fromUserEnroll, CurrentDateTime);
                try
                {
                    var toUser = ConnectedUsers.FirstOrDefault(x => x.EnrollNo == toUserEnroll);
                   Clients.Client(toUser.ConnectionId).method(fromUserName, fromUserEnroll, message);
                }
                catch (Exception e)
                {
                    Console.WriteLine("User Not Online" + e.ToString());
                }

            }
            else
            {
                Console.WriteLine("failed");
            }

        }
        public void LoadGroupChat(string GroupID,string enrollno)
        {
            string grpname=GetGroupName(GroupID,enrollno);
            string GetGroupChatQuery = "select `Time`,`Message`,`SenderEnrollNo` from `"+GroupID+"msgs`";
            List<List<string>> chat = ConnC.GetAllDataFromDB(GetGroupChatQuery, ConnC.groups_db);
            Clients.Caller.loadGroupChat(chat,grpname,enrollno);
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

                Clients.Caller.loadChat(Chat, check, GetUserName(toEnrollNo));


            }
            catch(MySql.Data.MySqlClient.MySqlException ex)
            {
                Console.WriteLine(ex.ToString());
                Clients.Caller.loadChat(null, check, GetUserName(toEnrollNo));


            }
            finally
            {
                
               
            }
           
            
        }
        public string GetUserBadge(string enrollno)
        {
            loadRegisteredUsers1();
            string rstr = "";
            for (int i = 0; i < RegisteredUsers.Count; i++)
            {
                for (int j = 0; j < RegisteredUsers[i].Count; j++)
                {
                    if (enrollno.Equals(RegisteredUsers[i][j]))
                    {
                        // Clients.All.alertMe(RegisteredUsers[i]);
                        rstr = RegisteredUsers[i][2];
                    }
                }

            }
            return rstr;
        }
        public bool ValidateRequest(string FromEnroll, string ToEnroll)
        {
          string  fbadge=GetUserBadge(FromEnroll);
            string tbadge = GetUserBadge(ToEnroll);
            if(tbadge=="Principal")
            {
                if(fbadge=="Student")
                {
                    return false;
                }
            }
            else if(tbadge=="HOD")
            {
                if(fbadge=="Student")
                {
                    return false;
                }
            }

            return true;
        }
        
        public void SendMessageToTeacher(string fromUserName, string fromUserEnroll, string toUserEnroll, string message)
        {
            if (!ValidateRequest(fromUserEnroll, toUserEnroll))
            {
             
                Clients.Client(Context.ConnectionId).sendRequestFailed(fromUserEnroll, toUserEnroll);
                return;
            }
            if (toUserEnroll != null && fromUserEnroll != null)
            {
                string CurrentDateTime = DateTime.Now.ToString();
                CallAddMessegeTo(message, fromUserName, fromUserEnroll, toUserEnroll);
            }
            else
            {
                Console.WriteLine("failed");
            }

        }
        public void AddMessageToGroup(string message, string fromUserEnroll, string toGroupID,string datetime)
        {
            try
            {
                
                string AddMessageToGroupQuery = "INSERT INTO `"+ toGroupID.ToLower()+"msgs` (`Time`, `Message`, `SenderEnrollNo`) VALUES(current_timestamp(), '"+message+"', '"+fromUserEnroll+"')";
                ConnC.ExecuteQuery(AddMessageToGroupQuery, ConnC.groups_db);
                
                Clients.Caller.addMessageToGroupChat(message, GetUserName(fromUserEnroll),datetime);
            }
            catch(Exception ee)
            {
                Console.WriteLine(ee.Message.ToString());
                
            }
        }
        public void SendMessageToGroup(string fromUserName, string fromUserEnroll, string toGroupID, string message)
        {
            if (toGroupID != null && fromUserEnroll != null)
            {
                AddMessageToGroup(message, fromUserEnroll, toGroupID,DateTime.Now.ToString());
            }
            else
            {
                Console.WriteLine("failed");
            }
        }

        public void LoadPrivateChat1(string fromEnrollNo, string toEnrollNo)
        {
            List<List<string>> Chat = new List<List<string>>();
            ConnClass Conn = new ConnClass();
            
            try
            {

                string[] arr = new string[] { fromEnrollNo, toEnrollNo };
                Array.Sort(arr);
                string table_name = "f" + arr[0] + "to" + arr[1];
                
                string GetPrevoiuschat = "SELECT c"+fromEnrollNo+",c"+toEnrollNo+",message,time FROM " + table_name;

                Chat = Conn.GetAllMessage(GetPrevoiuschat);

                Clients.Caller.loadChat(Chat, GetUserName(toEnrollNo));


            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Console.WriteLine(ex.ToString());
                Clients.Caller.loadChat(null,GetUserName(toEnrollNo));


            }
            finally
            {


            }


        }
        public void GetUserData(string enroll)
        {
            List<string> userdata = new List<string>();
            string QueryForData = "select `UserName`, `Badge`, `EnrollNo`, `Department`, `Year`, `Email`, `Photo`,`Password` from tbl_users where EnrollNo='"+enroll+"'";
            userdata = ConnC.GetRow(QueryForData);
            Clients.Caller.getUserData(userdata);
        }
        public void UpdateData(string enroll,string username,string email,string password)
        {
            string query = "update tbl_users set UserName='" + username + "',Email='" + email + "',Password='"+password+"' where EnrollNo='" + enroll + "' ";
            ConnC.ExecuteQuery(query);

          
       }
    }
}