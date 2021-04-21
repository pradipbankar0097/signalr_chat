﻿using System;
using System.Collections.Generic;
using System.Linq;
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
            string Query = "insert into tbl_Users(UserName,Badge,EnrollNo,Department,Year,Email,Password)Values('"+txtName.Value+ "','" + Badge.Text + "','" + EnrollNo.Value + "','" + Department.Text + "','"+year.Text+"','" + txtEmail.Value+"','"+txtPassword.Value+"')";
            string ExistQ = "select * from tbl_Users where Email='"+txtEmail.Value+"'";
            if (!ConnC.IsExist(ExistQ))
            {
                if (ConnC.ExecuteQuery(Query))
                {
                    string CreateTableQuery = "create table groupsof_"+EnrollNo.Value+"(GroupID varchar(40))";
                    string InsertGroupQuery = "insert into " + "groupsof_" + EnrollNo.Value + "(GroupID) values('" + year.Text + Department.Text + "')";
                    ConnC.ExecuteQuery(CreateTableQuery);
                    ConnC.ExecuteQuery(InsertGroupQuery);
                    ConnC.AddToGroup(year.Text + Department.Text, EnrollNo.Value);
                    ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Congratulations!! You have successfully registered..');", true);
                    //Session["UserName"] = txtName.Value;
                    //Session["Email"] = txtEmail.Value;
                    Response.Redirect("Login.aspx");
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message", "alert('Email is already Exists!! Please Try Different Email..');", true);
            }
        } 
    }
}