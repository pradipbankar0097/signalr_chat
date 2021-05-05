<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SignalRChat.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignalR Chat : Register</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <link href="Content/icheck-bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#Badge").change(function () {
              
                
                var value = $("#Badge option:selected").text();
                console.log(value);
                if (value == 'Principal') {
                    $("#dept").hide();
                    $("#yr").hide();
                }
                else if (value == 'HOD' || value == 'Professor') {
                    $("#yr").hide();
                }


            });
        });

    </script>
</head>
<body class="hold-transition register-page">
    <form id="form1" runat="server">

        <div class="register-box">
            <div class="register-logo">
                <a href="Login.aspx"><b>SignalR </b>Chat App</a>
            </div>

            <div class="register-box-body">
                <p class="login-box-msg">Register a new membership</p>


                <div class="form-group has-feedback">
                    <input id="txtName" type="text" class="form-control" placeholder="Full name" required="required" runat="server" />
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    Designation : 
          <asp:DropDownList ID="Badge" runat="server" OnSelectedIndexChanged="Badge_SelectedIndexChanged">
              <asp:ListItem>Student</asp:ListItem>
              <asp:ListItem>Professor</asp:ListItem>
              <asp:ListItem>HOD</asp:ListItem>
              <asp:ListItem>CR</asp:ListItem>
              <asp:ListItem>Principal</asp:ListItem>
          </asp:DropDownList>
                    &nbsp;<span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback" id="dept">
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
                </div>
                <div class="form-group has-feedback" id="yr">
                    Year : 
           <asp:DropDownList ID="year" runat="server" Enabled="true" OnSelectedIndexChanged="year_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
               <asp:ListItem>FE</asp:ListItem>
               <asp:ListItem>SE</asp:ListItem>
               <asp:ListItem>TE</asp:ListItem>
               <asp:ListItem>BE</asp:ListItem>
           </asp:DropDownList>
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
                </div>

                <div class="form-group has-feedback">
                    <input id="txtEmail" type="email" class="form-control" placeholder="Email" required="required" runat="server" />
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
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
                    <div class="col-xs-8">
                        <div class="checkbox icheck-primary">

                            <input type="checkbox" id="chkTerms" required="required" runat="server" />
                            <label for="chkTerms">I agree to the </label>
                            <a href="#">terms</a>
                        </div>

                    </div>
                    <!-- /.col -->
                    <div class="col-xs-4">
                        <button type="submit" class="btn btn-primary btn-block btn-flat" id="btnRegister" runat="server" onserverclick="btnRegister_ServerClick">Register</button>
                    </div>
                    <!-- /.col -->
                </div>

                <a href="Login.aspx" class="text-center">I already have an account</a>

                <!-- /.form-box -->
            </div>
        </div>
    </form>

   <%-- <script src="Scripts/jquery-1.9.1.min.js"></script>--%>
    
</body>
</html>
