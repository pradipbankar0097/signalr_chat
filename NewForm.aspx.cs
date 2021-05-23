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
        protected string UploadFolderPath = "/Uploads/";
        string guid = Guid.NewGuid().ToString();

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
            //Page.Header.DataBind();
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
        //protected void UpdateDetails_Click(object sender, EventArgs e)
        //{

        //   // string query = "update tbl_users set UserName='" + TextBox8.Text + "',Password='" + TextBox9.Text + "',Email='" + TextBox10.Text + "' where EnrollNo='" + UserEnrollNo + "' ";
        //    //conc.ExecuteQuery(query);

        //    conc.ExecuteQuery(query);
        //}

        //protected void btnSendMsg_Click(object sender, EventArgs e)
        //{

        //    //HttpPostedFile postedFile = Request.Files["attachFile"];
        //    //if(postedFile != null && postedFile.ContentLength > 0)
        //    //{
        //    //    string filePath = Server.MapPath("~/uploads/") + Path.GetFileName(postedFile.FileName);
        //    //    postedFile.SaveAs(filePath);
        //    //    int fileSize = postedFile.ContentLength;
        //    //    if(fileSize > 2097152)
        //    //    {

        //    //    }
        //    //    else
        //    //    {

        //    //    }

        //    //}
        //    if (FileUpload1.HasFile)
        //    {
        //        string filePath = Server.MapPath("~/uploads/") + Path.GetFileName(FileUpload1.FileName);
        //         FileUpload1.SaveAs(filePath);
        //    }



        //}


        protected void FileUploadComplete(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(1000);
            string filename =  System.IO.Path.GetFileName(AsyncFileUpload1.FileName);
            //var extension = Path.GetExtension(filename);
            //string fileName = string.Format("{0}-{1:ddMMMyyyy-HHmm}" + extension, this.UploadFolderPath, DateTime.Now);
            //var extension = Path.GetExtension(filename);
            //var newName = filename.Replace(filename, extension) + DateTime.Now.ToString("yyyy-MM-dd HH:mm:dd") + extension;

            // filename = filename + DateTime.Now.ToString("hh:mm tt");


            AsyncFileUpload1.SaveAs(Server.MapPath(this.UploadFolderPath) + filename);
        }




    }
}