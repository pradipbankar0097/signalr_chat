<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SignalRChat.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login : ChatHub-GECA</title>
    <!-- Font Icon -->
    <link rel="stylesheet" href="login/fonts/material-icon/css/material-design-iconic-font.min.css"/>

    <!-- Main css -->
    <link rel="stylesheet" href="login/css/style.css"/>
</head>
<body class="hold-transition login-page darkable" style="background-color:rgb(255 251 210)">
-


<div class="main">

     <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="login/images/signin-image.jpg" alt="sing up image"/></figure>
                        <a href="Register.aspx" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Login : ChatHub-GECA</h2>
                        <form method="POST" class="register-form" id="form1" runat="server">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                 <input type="email" id="txtEmail" class="form-control" placeholder="Email" required="required" runat="server" />
                                
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" id="txtPassword" class="form-control" placeholder="Password" required="required" runat="server" autocomplete="off" />
                            </div>
                         
                            <div class="form-group form-button">
                                <asp:Button ID="btnSignIn" runat="server" OnClick="btnSignIn_Click" Text="Login" CssClass="form-submit" />
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </section>   

</div>
    <!-- JS -->
    <script src="login/vendor/jquery/jquery.min.js"></script>
    <script src="login/js/main.js"></script>


    
    <script src="plugins/jquery-1.9.1.min"></script>
    <script src="plugins/bootstrap.min.js"></script>     </body>
</html>
