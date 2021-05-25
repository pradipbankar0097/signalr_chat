<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SignalRChat.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login : ChatHub-GECA</title>
    <!-- Font Icon -->
    <link rel="stylesheet" href="login/fonts/material-icon/css/material-design-iconic-font.min.css"/>

    <!-- Main css -->
    <link rel="stylesheet" href="login/css/style.css"/>

    
    <script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>
    <script>
        // Initialize Firebase
        var config = {
            apiKey: "AIzaSyCK1OUGRatm0pV_oOoR9k65CPyoWbl_gyo",
            authDomain: "gecachat.firebaseapp.com",
            projectId: "gecachat",
            storageBucket: "gecachat.appspot.com",
            messagingSenderId: "428955385455",
            appId: "1:428955385455:web:431f86a1bffd93dc0ed79a",
            measurementId: "G-Q3TT004DXB"
        };
        firebase.initializeApp(config);
    </script>
    <script type="text/javascript">
        firebase.auth().onAuthStateChanged(function (user) {
            if (user) {
                // User is signed in.

                document.getElementById("user_div").style.display = "block";
                document.getElementById("login_div").style.display = "none";

                var user = firebase.auth().currentUser;

                if (user != null) {

                    var email_id = user.email;
                    document.getElementById("user_para").innerHTML = "Welcome User : " + email_id;

                }

            } else {
                // No user is signed in.

                document.getElementById("user_div").style.display = "none";
                document.getElementById("login_div").style.display = "block";

            }
        });

        function login() {

            var userEmail = document.getElementById("txtEmail").value;
            var userPass = document.getElementById("txtPassword").value;

            firebase.auth().signInWithEmailAndPassword(userEmail, userPass).catch(function (error) {
                // Handle Errors here.
                var errorCode = error.code;
                var errorMessage = error.message;

                window.alert("Error : " + errorMessage);

                // ...
            });

        }

        function logout() {
            firebase.auth().signOut();
        }

    </script>
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
                        <div id="login_div" class="main-div">
        <h3>Firebase Web login Example</h3>
        <input type="email" placeholder="Email..." id="email_field" />
        <input type="password" placeholder="Password..." id="password_field" />

        <button onclick="login()">Login to Account</button>
    </div>

    <div id="user_div" class="loggedin-div">
        <h3>Welcome User</h3>
        <p id="user_para">Welcome to Firebase web login Example. You're currently logged in.</p>
        <button onclick="logout()">Logout</button>
    </div>
                        
                    </div>
                </div>
            </div>
        </section>   

</div>
    <!-- JS -->
    <script src="login/vendor/jquery/jquery.min.js"></script>
    <script src="login/js/main.js"></script>


    
    <script src="plugins/jquery-1.9.1.min"></script>
    <script src="plugins/bootstrap.min.js"></script>






</body>
</html>
