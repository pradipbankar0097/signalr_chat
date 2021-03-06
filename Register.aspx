<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SignalRChat.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignalR Chat : Register</title>
    <link rel="stylesheet" href="login/fonts/material-icon/css/material-design-iconic-font.min.css"/>

    <!-- Main css -->
    <link rel="stylesheet" href="login/css/style.css"/>
    <script src="login/vendor/jquery/jquery.min.js"></script>
  
    <script type="text/javascript">
        $(function () {
            $("#Badge").change(function () {


                var value = $("#Badge option:selected").text();
                console.log(value);
                if (value == 'Principal') {
                    $("#Departmentc").hide();
                    $("#yearc").hide();
                }
                else if (value == 'HOD' || value == 'Professor') {
                    $("#yearc").hide();
                }
                else {
                    $("#Departmentc").show();
                    $("#yearc").show();

                }


            });
        });

    </script>
</head>
<body class="hold-transition register-page">

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Register</h2>
    <form id="form1" class="register-form" runat="server">

        <div class="register-box">
            
            <div class="register-box-body" style="font-size:20px;">
                


                <div class="form-group has-feedback">
                    <input id="txtName" type="text" class="form-control" placeholder="Full name" required="required" runat="server" />
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback" id="Badgec">
                    Designation : 
          <asp:DropDownList ID="Badge" runat="server" OnSelectedIndexChanged="Badge_SelectedIndexChanged">
              <asp:ListItem>Student</asp:ListItem>
              <asp:ListItem>Professor</asp:ListItem>
              <asp:ListItem>HOD</asp:ListItem>
              <asp:ListItem>CR</asp:ListItem>
              <asp:ListItem>Principal</asp:ListItem>
          </asp:DropDownList>
                    &nbsp;<span class="glyphicon glyphicon-user form-control-feedback"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**Field is empty " ControlToValidate="Badge" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group has-feedback" id="Departmentc">
                    Department :&nbsp;
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    <asp:DropDownList ID="Department" runat="server" OnSelectedIndexChanged="Department_SelectedIndexChanged" >
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Mechanical</asp:ListItem>
                        <asp:ListItem>Civil</asp:ListItem>
                        <asp:ListItem>Electrical</asp:ListItem>
                        <asp:ListItem>CSE</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>ENTC</asp:ListItem>
                        <asp:ListItem>Mathematics</asp:ListItem>
                        <asp:ListItem>Science</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**Field is empty " ControlToValidate="Department" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group has-feedback" id="yearc">
                    Year : 
           <asp:DropDownList ID="year" runat="server" Enabled="true" OnSelectedIndexChanged="year_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
               <asp:ListItem>FE</asp:ListItem>
               <asp:ListItem>SE</asp:ListItem>
               <asp:ListItem>TE</asp:ListItem>
               <asp:ListItem>BE</asp:ListItem>
           </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="**Field is empty " ControlToValidate="year" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group has-feedback">
                    <input id="EnrollNo" type="text" class="form-control" placeholder="Enrollment No" required="" runat="server" />
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>

                <div class="form-group has-feedback">
                  Add Profile Photo: <asp:FileUpload ID="FileImgsave" runat="server"/>
                    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    <%--code for image input--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="**Field is empty " ControlToValidate="FileImgsave" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group has-feedback">
<input type="email" id="txtEmail" runat="server" class="form-control" placeholder="Email" />

                   </div>
                <div class="form-group has-feedback">
                    <input id="txtPassword" type="password" class="form-control" placeholder="Password" required="required" runat="server" />
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>

                <div class="form-group has-feedback">
                    <input id="txtPasswordR" type="password" class="form-control" placeholder="Retype password" required="required" runat="server" />
                    <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                </div>

                <div class="row">
                    
                    <!-- /.col -->
                    <div class="col-xs-4">
                        <button type="submit" class="form-submit" id="btnRegister" runat="server" onserverclick="btnRegister_ServerClick">Register</button>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPasswordR" ControlToValidate="txtPassword" ErrorMessage="**Password does not matches " ForeColor="Red"></asp:CompareValidator>
                    </div>
                    <!-- /.col -->
                </div>

                
                <!-- /.form-box -->
            </div>
        </div>
    </form>

                </div>
                    <div class="signup-image">
                        <h2 class="form-title">ChatHub-GECA</h2>
                        <figure><img src="login/images/signin-image.jpg" alt="sing up image"/></figure>
                        <a href="Login.aspx" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
   <%-- <script src="Scripts/jquery-1.9.1.min.js"></script>--%>
    


        </div>

      <script src="login/js/main.js"></script>
</body>
</html>
