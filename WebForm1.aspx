<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SignalRChat.WebForm1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css" />
    <%--integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK" crossorigin="anonymous"/>--%>
   
  <!-- Custom CSS -->
  <link rel="stylesheet" href="css/StyleSheet1.css"/>
   

    <title>WhatsApp Web</title>
    <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />

   



    <script src="Scripts/jQuery-3.2.1.min.js"></script> 
    <script src="Scripts/jquery.signalR-2.2.2.min.js"></script>
    <script src="Scripts/date.format.js"></script>

    <!--EmojiOneArea -->
    <link href="Content/emojionearea.min.css" rel="stylesheet" />
    <script src="Scripts/emojionearea.js"></script>
  
    <!--Reference the autogenerated SignalR hub script. -->
    <script src="signalr/hubs"></script>
    <!--Jquery slimScroll -->
    <script type="text/javascript" src="Scripts/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="Scripts/connection.js"></script>
    
   <%-- <script type="text/javascript" src="js\registerclientmethods"></script>
   <script type="text/javascript" src="js\registerevents"></script>--%>
   
    
     <script type="text/javascript" src="js\JavaScript.js"></script>
    <script type="text/javascript">


        function registerEvents(chatHub) {
            $(document).ready(function () { 
              var selectedfield = 'c';
            var name = '<%# this.UserName %>';
            var badge = '<%# this.UserBadge %>';
            var enrollno = '<%# this.UserEnrollNo %>';
            var department = '<%# this.UserDepartment %>';
                var email = '<%# this.UserEmail %>';
                var toGroupId;

           

            if (name.length > 0) {
                chatHub.server.connect(name, badge, enrollno, department, email);

            }


            // Clear Chat
            $('#btnClearChat').click(function () {

                var msg = $("#msgarea").html();

                if (msg.length > 0) {
                    chatHub.server.clearTimeout();
                    $('#msgarea').html('');

                }
            });

            // Send Button Click Event
            $('#btnSendMsg').click(function () {

                var msg = $("#txtMessage").val();
                $("#txtMessage").val('');

                if (msg.length > 0) {
                    var fromUserName = name;
                    var fromuserEnroll = $('#hdUserEnroll').val();
                    var toUserEnroll = $('#hdtoUserEnroll').val();
                
                    alert(toGroupId);
                    switch (selectedfield) {
                        case 'c':
                            chatHub.server.sendPrivateMessage(fromUserName, fromuserEnroll, toUserEnroll, msg);
                            console.log('server request sent');
                            break;
                        case 't':
                            chatHub.server.sendMessageToTeacher(fromUserName, fromuserEnroll, toUserEnroll, msg);
                            break;
                        case 'g':
                            chatHub.server.sendMessageToGroup(fromUserName, fromuserEnroll, toGroupId , msg);
                            break;
                        
                        default:
                            alert('Select a field');
                    };
                 
                  //  chatHub.server.sendMessageToAll(userName, msg);
                    
                }
            });
            $('#classmates').click(function () {
                selectedfield = 'c';
                chatHub.server.loadRegisteredUsers();
                

            });
            $('#teachers').click(function () {
                selectedfield = 't';
                chatHub.server.loadRegisteredTeachers();
               

            });

            $('#groups').click(function () {
                selectedfield = 'g';
                chatHub.server.loadRegisteredGroups("<%=Session["UserEnrollNo"].ToString()%>");
               

            });


            
            $('.rusers').mouseenter(function () {
                if (true) {
                   
                    var i;

                    var ide = this.children;

                    for (i = 0; i < ide.length; i++) {
                        var num = ide.item(i).addEventListener('mouseup', function () {
                            console.log('event occured');

                           
                          

                            if (selectedfield == 'c') {

                                var toEnrollNo = this.id;
                                $('#hdtoUserEnroll').val(toEnrollNo);
                                console.log(toEnrollNo);
                                $('#spanUser').val = toEnrollNo;
                                chatHub.server.loadPrivateChat(toEnrollNo, enrollno);
                                //loaded.push(toEnrollNo);
                            }
                            else if (selectedfield == 'g') {
                                 toGroupId = this.id;
                               

                               
                                chatHub.server.loadGroupChat(toGroupId,enrollno);
                            }
                        });

                    }

                }


            });

            //NOTIFICAIONS
            $('#notification').click(function () {
                console.log("n");
                chatHub.server.showNotification();
            });

            $('#createNoti').click(function () {
               console.log("script loaded");
                
                console.log("Create Notification called.");
               chatHub.server.createNotification();
              
            });
           
            



            // Send Message on Enter Button
            $("#txtMessage").keypress(function (e) {
                if (e.which == 13) {
                    $('#btnSendMsg').click();
                }
            });

        });


        };
        (function (timer) {
            console.log('timer called');
            window.addEventListener('load', function () {
                var el = document.querySelector('.contact-table-scroll');
                el.addEventListener('scroll', function (e) {
                    console.log('scroll added');
                    (function (el) {
                        el.classList.add('scroll');
                        clearTimeout(timer);
                        timer = setTimeout(function () {
                            el.classList.remove('scroll');
                        }, 100);
                    })(el);
                })
            })
        })();
    </script>
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="back-container">
    <div class="container-fluid front-container">
      <div class="back-top"></div>
      <div class="back-main"></div>
    </div>
            <div id = "dialog-4" title = "Dialog Title goes here...">This my first jQuery UI Dialog!</div>
         <input id="hdId" type="hidden" />
        <input id="PWCount" type="hidden" value="info" />
        <input id="hdUserEnroll" type="hidden" />
        <input id="hdtoUserEnroll" type="hidden" />
        <input id="hdGroupId" type="hidden" />
               
    <div class="container front-container1">
      <div class="row ">
          <ul class="nav navbar-nav panel">
                        <li><a id="classmates" runat="server" href="#">Classmates</a></li>
                        <li><a id="teachers" runat="server" href="#">Teachers</a></li>
                        <li><a id="groups" runat="server" href="#">Groups</a></li>
                       <li><a id="notification" runat="server" href="#">Notifications</a></li>
                       <li><input id="createNoti" type="button" value="button" /></li>
            </ul>
          <table>
              <tbody id="ntf">

              </tbody>
              </table>
                
          </div>  
      <div class="row chat-top">
        <div class="col-sm-4 border-right border-secondary">
          <img src="images/p3.jpg" alt="" class="profile-image rounded-circle float-left"/>
          <span class="float-right mt-2">
            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-circle" fill="currentColor"
              xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
            </svg>
            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chat-left-fill mx-3" fill="currentColor"
              xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd"
                d="M2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
            </svg>
            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-three-dots-vertical mr-2" fill="currentColor"
              xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd"
                d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
            </svg>
          </span>
             <span id="spanUser"style="margin-top:0.5rem" class="ml-2 float-left">Rahul Kumar</span>


        </div>
        <div class="col-sm-8">
          <img src="images/p2.jpg" alt="" class="profile-image rounded-circle"/>
          <span id="spanUser1" class="ml-2"></span>
          <span class="float-right mt-2">
            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor"
              xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd"
                d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z" />
              <path fill-rule="evenodd"
                d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z" />
            </svg>
            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-three-dots-vertical mx-3" fill="currentColor"
              xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd"
                d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
            </svg>
          </span>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4 contacts">
          <div class="contact-table-scroll">
            <table class="table table-hover">
              <tbody id="listarea" class="rusers">
                <%--user/groups list are loaded here dyanmically--%>
              </tbody>
            </table>
          </div>

        </div>
        <div class="col-sm-8 message-area">
          <div id="msgarea" class="message-table-scroll">
           <%--messages are added here dyanmically--%>
           </div>
          <div class="row message-box p-3">
            <div class="col-sm-2 mt-2">
              <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-emoji-smile" fill="currentColor"
                xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                <path fill-rule="evenodd"
                  d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683z" />
                <path
                  d="M7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z" />
              </svg>
              <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-paperclip mx-2" fill="currentColor"
                xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                  d="M4.5 3a2.5 2.5 0 0 1 5 0v9a1.5 1.5 0 0 1-3 0V5a.5.5 0 0 1 1 0v7a.5.5 0 0 0 1 0V3a1.5 1.5 0 1 0-3 0v9a2.5 2.5 0 0 0 5 0V5a.5.5 0 0 1 1 0v7a3.5 3.5 0 1 1-7 0V3z" />
              </svg>
              <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cash" fill="currentColor"
                xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                  d="M15 4H1v8h14V4zM1 3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H1z" />
                <path
                  d="M13 4a2 2 0 0 0 2 2V4h-2zM3 4a2 2 0 0 1-2 2V4h2zm10 8a2 2 0 0 1 2-2v2h-2zM3 12a2 2 0 0 0-2-2v2h2zm7-4a2 2 0 1 1-4 0 2 2 0 0 1 4 0z" />
              </svg>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="text" id="txtMessage"/>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="button" id="btnSendMsg" >
            </div>
            <div class="col-sm-8">

            </div>
            <div class="col-sm-2 mt-1">
              <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-double-up" fill="currentColor"
                xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                  d="M7.646 2.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 3.707 2.354 9.354a.5.5 0 1 1-.708-.708l6-6z" />
                <path fill-rule="evenodd"
                  d="M7.646 6.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 7.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z" />
              </svg>
            </div>

          </div>
        </div>
      </div>
    </div>

  </div>
        </div> 
    </form>
</body>
</html>
