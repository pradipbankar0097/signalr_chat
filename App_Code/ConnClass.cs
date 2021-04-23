using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MySql.Data.MySqlClient;


namespace SignalRChat
{
    public class ConnClass
    {
        public MySqlCommand cmd = new MySqlCommand();
        public MySqlDataAdapter sda;
        public MySqlDataReader sdr;
        public DataSet ds = new DataSet();
        public MySqlConnection con = new MySqlConnection(@"Server=localhost;Database=temp;Uid=root;Pwd=");
        public MySqlConnection groups_db = new MySqlConnection(@"Server=localhost;Database=groups_db;Uid=root;Pwd=");
        public MySqlConnection ntf = new MySqlConnection(@"");
        public bool CreateGroup(string GroupName, string CreatorEnrollNo)
        {
            bool done = false;
            string dt = DateTime.Now.ToString().Replace('-', '_').Replace(':', '_').Replace(' ', '_');
            string GroupID = CreatorEnrollNo + dt;
            string Query = "insert into groupsof_" + CreatorEnrollNo + "(GroupID) values(" + GroupID + ")";
            con.Open();
            cmd = new MySqlCommand(Query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            groups_db.Open();
            Query = @"insert into tbl_groups(GroupID,GroupName,CreatedBy,CreatedOn) values('{GroupID}','{GroupName}','{CreatorEnrollNo}','{DateTime.Now.ToString()}')";
            cmd = new MySqlCommand(Query,groups_db);
            cmd.ExecuteNonQuery();
            Query = @"create table {GroupID}(MemberEnrollNo varchar(20))";
            cmd = new MySqlCommand(Query, groups_db);
            cmd.ExecuteNonQuery();
            Query = @"insert into {GroupID}(MemberEnrollNo) values('{CreatorEnrollNo}')";
            cmd = new MySqlCommand(Query, groups_db);
            cmd.ExecuteNonQuery();

            groups_db.Close();
            done = true;
            return done;
        }

        public bool CreateNotif(string Author,string Message,int GON) {
            bool check = false;
            
           // string releaseAt = DateTime.Now.ToString().Replace('-', '_').Replace(':', '_').Replace(' ', '_');
            
            string Query = "insert into notify values('" + Message + "','" +Author+ "','"+GON+"')";
            ntf.Open();
            cmd = new MySqlCommand(Query,ntf);
            cmd.ExecuteNonQuery();
            ntf.Close();
            check = true;
            return check;
        }

        public bool IsExist(string Query)
        {
            bool check = false;
            using (cmd = new MySqlCommand(Query, con))
            {

                con.Open();
                sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                    check = true;
            }
            sdr.Close();
            con.Close();
            return check;

        }
        public bool AddToGroup(string group, string enrollno)
        {
            bool done = false;
            try 
            { 
                groups_db.Open();
                cmd = new MySqlCommand("insert into " + group + "(MemberEnrollNo) values('" + enrollno + "')",groups_db);
                cmd.ExecuteNonQuery();
                
                done = true;
                groups_db.Close();
            
            }
            catch (Exception ee)
            {

            }
            return done;
        }



        public List<string> GetRow(string Query)
        {
            List<string> RetVal = new List<string>();
            cmd = new MySqlCommand(Query, con);
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                for (int i = 0; i < sdr.FieldCount; i++)
                {
                    RetVal.Add(sdr[i].ToString());
                }

            }
            return RetVal;
        }

        //public List<string> GetAllGroups(string Query )
        //{
        //    List<string> RetVal = new List<string>();
        //    groups_db.Open();
        //    cmd = new MySqlCommand(Query, groups_db);
        //    sdr = cmd.ExecuteReader(); 
        //    if(sdr.Read())
        //    {
        //        for (int i = 0; i < sdr.FieldCount; i++)
        //        {
        //            RetVal.Add(sdr[i].ToString());
        //        }

        //    }
        //    return RetVal;
        //}
        public List<List<string>> GetAllData(string Query)
        {
            List<List<string>> RetVal = new List<List<string>>();
            using (cmd = new MySqlCommand(Query, con))
            {
                con.Open();
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    List<string> temp = new List<string>();
                    for (int i = 0; i < sdr.FieldCount; i++)
                    {
                        temp.Add(sdr[i].ToString());
                    }
                    RetVal.Add(temp);
                }
            }
            sdr.Close();
            con.Close();
            return RetVal;
        }
        public List<List<string>> GetAllDataFromDB(string Query)
        {
            List<List<string>> RetVal = new List<List<string>>();
            using (cmd = new MySqlCommand(Query, ntf))
            {
                 ntf.Open();
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    List<string> temp = new List<string>();
                    for (int i = 0; i < sdr.FieldCount; i++)
                    {
                        temp.Add(sdr[i].ToString());
                    }
                    RetVal.Add(temp);
                }
            }
            sdr.Close();
            ntf.Close();
            return RetVal;
        }
        public List<List<string>> GetAllGroups(string Query)
        {
            List<List<string>> RetVal = new List<List<string>>();
            try
            {
                using (cmd = new MySqlCommand(Query, groups_db))
                {
                    groups_db.Open();
                    sdr = cmd.ExecuteReader();
                    while (sdr.Read())
                    {
                        List<string> temp = new List<string>();
                        for (int i = 0; i < sdr.FieldCount; i++)
                        {
                            if(true)temp.Add(sdr[i].ToString());
                           

                        }
                        RetVal.Add(temp);
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
            finally
            {
                sdr.Close();
                con.Close();
            }

            return RetVal;
        }
        public List<List<string>> GetAllMessage(string Query) 
        {
            List<List<string>> RetVal = new List<List<string>>();

            using (cmd = new MySqlCommand(Query, con))
            {
                con.Open();
                
                
                    sdr = cmd.ExecuteReader();
                    while (sdr.Read())
                    {
                        List<string> ls = new List<string>();

                        for (int i = 0; i < sdr.FieldCount; i++)
                        {
                            //temp.Add(sdr[i].ToString());
                            // tempstr=sdr[]
                            ls.Add(sdr[i].ToString());
                        }

                        RetVal.Add(ls);
                    }
                
               
            }
            sdr.Close();
            con.Close();
            return RetVal;
        }
        public List<List<string>> GetAllFromColumn(string Query, params string[] ColumnName)
        {
            List<List<string>> RetVal = new List<List<string>>();


            using (cmd = new MySqlCommand(Query, con))
            {
                con.Open();
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {

                    List<string> temp = new List<string>();
                    temp.Add(sdr[ColumnName[0]].ToString());
                    //temp.Add(sdr[ColumnName[ColumnName.Length-1]].ToString());
                    RetVal.Add(temp);
                }
                sdr.Close();
                con.Close();
            }

            return RetVal;
        }

        public bool ExecuteQuery(string Query)
        {
            int j = 0;
            using (cmd = new MySqlCommand(Query, con))
            {
                con.Open();
                j = cmd.ExecuteNonQuery();
                con.Close();
            }

            if (j > 0)
                return true;
            else
                return false;

        }

        public List<string> GetFullColumn(string Query,MySqlConnection con1)
        {
            List<string> RetVal = new List<string>();
            using (cmd = new MySqlCommand(Query, con1))
            {
                con1.Open();
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    RetVal.Add(sdr[0].ToString());
                }
            }
            sdr.Close();
            con1.Close();
            return RetVal;
        }

        public string GetColumnVal(string Query, string ColumnName)
        {
            string RetVal = "";
            using (cmd = new MySqlCommand(Query, con))
            {
                con.Open();
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    RetVal = sdr[ColumnName].ToString();
                    break;
                }
                sdr.Close();
                con.Close();
            }

            return RetVal;


        }


    }
}