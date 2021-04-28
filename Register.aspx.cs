using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRChat
{
    public partial class Register : System.Web.UI.Page
    {
        ConnClass ConnC = new ConnClass();
     
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_ServerClick(object sender, EventArgs e)
        {
            

            if(FileImgsave.HasFile)
            {
                
                    lblmsg.Text = "";
                
                var supportedTypes = new[] { "png", "jpg", "bmp", "jpeg", "tif", "eps","jfif" };
                var fileExt = System.IO.Path.GetExtension(FileImgsave.FileName).Substring(1);
                if (!supportedTypes.Contains(fileExt))
                {
                    lblmsg.ForeColor = Color.Red;
                    lblmsg.Text = "File Extension Is InValid - Only Upload png,jpg,jpeg,bmp,tif,eps,jfif format images";
             
                }
                
                else
                {
                    string str = FileImgsave.FileName;
                    FileImgsave.PostedFile.SaveAs(Server.MapPath("~/Images/" + "profile/" + str));
                    string imgPath = "~/Images/" + "profile/" + str;
                    string Query = "insert into tbl_Users(UserName,Badge,EnrollNo,Department,Year,Email,Password,Photo)Values('" + txtName.Value + "','" + Badge.Text + "','" + EnrollNo.Value + "','" + Department.Text + "','" + year.Text + "','" + txtEmail.Value + "','" + txtPassword.Value + "','" + imgPath + "')";
                    string ExistQ = "select * from tbl_Users where Email='" + txtEmail.Value + "'";
                    if (!ConnC.IsExist(ExistQ))
                    {
                        if (ConnC.ExecuteQuery(Query))
                        {
                            string CreateTableQuery = "create table groupsof_" + EnrollNo.Value + "(GroupID varchar(40))";
                            string InsertGroupQuery = "insert into " + "groupsof_" + EnrollNo.Value + "(GroupID) values('" + year.Text + Department.Text + "')";
                            ConnC.ExecuteQuery(CreateTableQuery);
                            ConnC.ExecuteQuery(InsertGroupQuery);
                            ConnC.AddToGroup(year.Text + Department.Text, EnrollNo.Value);
                            ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You have successfully registered..');", true);
                            
                            Response.Redirect("Login.aspx");
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Email is already Exists!! Please Try Different Email..');", true);
                    }
                }
                
                


               

            }
            else
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = "Please select Image";
            }
            


        }
        public static bool IsValidImageFormat(String path)
        {
            using (FileStream fs = File.OpenRead(path))
            {
                byte[] header = new byte[10];
                fs.Read(header, 0, 10);

                foreach (var pattern in new byte[][] {
                    Encoding.ASCII.GetBytes("BM"),
                    Encoding.ASCII.GetBytes("GIF"),
                    new byte[] { 137, 80, 78, 71 },     // PNG
                    new byte[] { 73, 73, 42 },          // TIFF
                    new byte[] { 77, 77, 42 },          // TIFF
                    new byte[] { 255, 216, 255, 224 },  // jpeg
                    new byte[] { 255, 216, 255, 225 }   // jpeg canon
            })
                {
                    if (pattern.SequenceEqual(header.Take(pattern.Length)))
                        return true;
                }
            }

            return false;
        } //IsValidImageFormat

    }
}