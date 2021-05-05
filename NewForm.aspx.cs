using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using SD = System.Drawing;
using System.Web.UI.HtmlControls;
using System.Data;


namespace SignalRChat
{
    public partial class NewForm : System.Web.UI.Page
    {
        public string UserName = "admin";
        public string UserBadge = "admin";
        public string UserEnrollNo = "admin";
        public string UserDepartment = "admin";
        public string UserImage = "/images/DP/dummy.png";
        protected string UploadFolderPath = "~/Uploads/";
        
        private string fromUser = "";
        public string UserEmail = "";
        public string UserPassword;
        public List<List<string>> RegisteredUsers = new List<List<string>>();
        ConnClass conc = new ConnClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            UserPassword = Session["Pass"].ToString();
        string GetRegisteredUsersQuery = "select UserName from tbl_users where EnrollNo <> '" + UserEnrollNo + "' and Badge='Student'";
            string[] ColumnName = { "UserName", "EnrollNo" };
            RegisteredUsers = conc.GetAllFromColumn(GetRegisteredUsersQuery, ColumnName);

            if (Session["UserName"] != null)
            {
                UserName = Session["UserName"].ToString();
                UserBadge = Session["UserBadge"].ToString();
                UserEnrollNo = Session["UserEnrollNo"].ToString();
                UserDepartment = Session["UserDepartment"].ToString();
                UserEmail = Session["UserEmail"].ToString();
                fromUser += UserName;
                GetUserImage(UserName);
                

            }
            //else
            //    // Response.Redirect("Login.aspx");
            //    ;

            this.Header.DataBind();
            
        }

        public void GetUserImage(string Username)
        {
            if (Username != null)
            {
                string query = "select Photo from tbl_Users where UserName='" + Username + "'";

                string ImageName = conc.GetColumnVal(query, "Photo");
                if (ImageName != "")
                    UserImage = ImageName;
            }


        }
        protected void UpdateDetails_Click(object sender, EventArgs e)
        {
            
            string query = "update tbl_users set UserName='" + TextBox8.Text + "',Password='" + TextBox9.Text + "',Email='" + TextBox10.Text + "' where EnrollNo='" + UserEnrollNo + "' ";
            //conc.ExecuteQuery(query);

            conc.ExecuteQuery(query);
        }
        
    }
}