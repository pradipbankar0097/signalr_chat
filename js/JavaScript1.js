$(function () {


    var chatHub = $.connection.chatHub;
    registerClientMethods(chatHub);
    // Start Hub
    $.connection.hub.start().done(function () {

        console.log("connection succeded");
        registerEvents(chatHub);
        


    });
});

var list_area_row_html = '<div id="' + 'id_placeholder' + '" class="row testing urow darkable"> <div class="pp-sm testing4"> <img class="img-pp-sm" src="images/dummy.png" alt=""> </div> <div class="testing3 udetails-sm">  <div class="testing2 name-row" >  <div class="uname testing3" style="float: left;"> uname_placeholder </div> </div> <div class="testing1 row ulast-chat"> <div class="lchat-msg" style="width:70%">ok bye</div> <div class="lchat-time" style="float:right;">11:00pm</div>                            <div class="uunread testing 1" style="float:right;">25</div>                        </div>                        <div class="row hr"></div>                    </div>                </div>'; 

function AddMessage(userName, message, time, userimg) {
    console.log("Add Message Called");

    var CurrUser = $('#hdUserName').val();
    //var Side = 'right';
    //var TimeSide = 'left';

    if (CurrUser == userName) {
        Side = 'left';
        TimeSide = 'right';

    }
  
    // var divChat = '<div class="bg-primary p-2 mt-2 mr-5 shadow-sm text-white float-right rounded ">'+message+'</div>';


    var divChat = '<div class="direct-chat-msg ' + Side + '">' +
        
        '<div class="direct-chat-info clearfix">' +
        // '<span class="direct-chat-name pull-' + Side + '">' + userName + '</span>' +
        '<span class="direct-chat-timestamp pull-' + TimeSide + '"">' + time + '</span>' +
        '</div>' +

        // ' <img class="direct-chat-img" src="' + userimg + '" alt="Message User Image">' +
        ' <div class="direct-chat-text" >' + message + '</div> </div>';
    $('#msgarea').append(divChat);

   


};



function registerClientMethods(chatHub) {

    

    // Calls when user successfully logged in
    chatHub.client.onConnected = function (id, userName, userEnroll) {
        console.log("onConnected Called");

        $('#hdId').val(id);
        $('#hdUserEnroll').val(userEnroll);
        $('#spanUser').html(userName);


    };
    chatHub.client.sendRequestFailed = function (fromuserenroll,touserenroll) {
        alert("You are not authorized for this operation");
     };

    //chatHub.client.addMessageToPrivateChat = function (msg, username, userenroll, time) { console.log(msg) };

    chatHub.client.method = function (fromusername, fromuserenroll, messasge) {
        alert("You have message from" + fromusername);
        console.log(messasge);

    };
    chatHub.client.loadRegisteredUsers = function (users) {
        var i;
        var add;
        var add1='';
        var add2='';
        console.log(users);

        $('#listarea').html('');
        $('#listarea').height(70 * users.length);
        for (i = 0; i < users.length; i++) {
            add = '<div id="' + users[i][1] + '" class="row testing urow darkable">                <div class="pp-sm testing4">                    <img class="img-pp-sm" src="images/dummy.png" alt="">                      </div>                    <div class="testing3 udetails-sm">                        <div class="testing2 name-row" >                            <div class="uname testing3" style="float: left;">' + users[i][0]+'</div>                        </div>                        <div class="testing1 row ulast-chat">                            <div class="lchat-msg" style="width:70%">ok bye</div>                            <div class="lchat-time" style="float:right;">11:00pm</div>                            <div class="uunread testing 1" style="float:right; display:hidden;">25</div>                        </div>                        <div class="row hr"></div>                    </div>                </div>';
            $('#listarea').append(add + add1 + add2);
        }
    };
    chatHub.client.loadRegisteredGroups = function (groups) {

        var i;
        var add;
        var add1;
        var add2;
        $('#listarea').html('');
        console.log(groups);
        $('#listarea').height(70 * groups.length);
        for (i = 0; i < groups.length; i++) {
            var list_area_row_html = '<div id="id_placeholder" class="row testing urow darkable"> <div class="pp-sm testing4"> <img class="img-pp-sm" src="images/dummy.png" alt=""> </div> <div class="testing3 udetails-sm">  <div class="testing2 name-row" >  <div class="uname testing3" style="float: left;"> uname_placeholder </div> </div> <div class="testing1 row ulast-chat"> <div class="lchat-msg" style="width:70%">ok bye</div> <div class="lchat-time" style="float:right;">11:00pm</div>                            <div class="uunread testing 1" style="float:right;">25</div>                        </div>                        <div class="row hr"></div>                    </div>                </div>'; 
            add = list_area_row_html.replace('id_placeholder', groups[i][0]).
                replace('uname_placeholder', groups[i][1]);


            $('#listarea').append(add);
        }

    };
    chatHub.client.loadRegisteredTeachers = function (teachers) {
        var i;
        var add;
        var add1;
        var add2;
        $('#listarea').html('');
        console.log(teachers);
        $('#listarea').height(70 * teachers.length);
        for (i = 0; i < teachers.length; i++) {
            /*
            add = ' <tr id="' + teachers[i][1] + '" }> <td><img src="images/p2.jpg" alt="" class="profile-image rounded-circle" /></td>';

            add1 = '<td>' + teachers[i][0] + ' <br /> <small>achi chal rahi</small></td>';

            add2 = '<td><small>11:55 PM</small></td></tr>';
            */

            var list_area_row_html = '<div id="id_placeholder" class="row testing urow darkable"> <div class="pp-sm testing4"> <img class="img-pp-sm" src="images/dummy.png" alt=""> </div> <div class="testing3 udetails-sm">  <div class="testing2 name-row" >  <div class="uname testing3" style="float: left;"> uname_placeholder </div> </div> <div class="testing1 row ulast-chat"> <div class="lchat-msg" style="width:70%">ok bye</div> <div class="lchat-time" style="float:right;">11:00pm</div>                            <div class="uunread testing 1" style="float:right;">25</div>                        </div>                        <div class="row hr"></div>                    </div>                </div>'; 
            add = list_area_row_html.replace('id_placeholder', teachers[i][1]).replace('uname_placeholder', teachers[i][0]);
            $('#listarea').append(add);
        }
    };


    chatHub.client.showNtf = function (Notifications) {

        var i;
        var add;
        var add1;


        console.log(Notifications);
        /*Notifications = {msg,creator,notice_id,from_date,to_date}*/
        for (i = 0; i < Notifications.length; i++) {

            var add1 = '<div>From: ' + Notifications[i][1] + '</div>'
            var add2 = '<div>Expiry Date: ' + Notifications[i][4] + '</div>'
            add = '<li>' + Notifications[i][0] + '</li><hr/>';
            
            $('#ntf').append(add1+add2+add);
        }

    };
    chatHub.client.ntfCreated = function () {
        console.log("notification created");
        alert("New Notification created successfully!!!");
    };

    // On New User Connected
    chatHub.client.onNewUserConnected =  function (id, name, UserImage, loginDate) {
        AddUser(chatHub, id, name, UserImage, loginDate);
    };

    // On User Disconnected
    chatHub.client.onUserDisconnected = function (id, userName) {

        $('#Div' + id).remove();

        var ctrId = 'private_' + id;
        $('#' + ctrId).remove();


        var disc = $('<div class="disconnect">"' + userName + '" logged off.</div>');

        $(disc).hide();
        $('#divusers').prepend(disc);
        $(disc).fadeIn(200).delay(2000).fadeOut(200);

    };


    chatHub.client.loadChat = function (messages, tousername) {
        $('#msgarea').html('');
        console.log(tousername);
        $('#spanUser1').html('');
        $('#spanUser1').html('<Text>' + tousername + '</Text>');
        if (messages != null) {
            var i;
            /* messages = {from,to,msg,time} */
            for (i = 0; i < messages.length; i++) {

                var divChat = '<div class="row darkable sender-msg-box">'
                    +'<div class="msg-box-row">'
                                            +'<div class="sender-box darkable">'
                                                +'<div class="msg darkable">'+messages[i][2]+'</div>'
                    + '<div class="sender-msg-time-read-rec">'
                    + '<div class="read-rec">//</div>'
                    + '<div class="msg-time">' + messages[i][3].substring(10,16) + '</div>'
                                                    
                                                +'</div>'
                                            +'</div>'
                                        +'</div >'
                                        +'</div >';

                if (messages[i][0] == 'True') {
                    divChat = divChat.replace(/sender/g, 'sender'); 
                    divChat = divChat.replace(/class="read-rec"/g, 'hidden'); 

                }
                else {
                    divChat = divChat.replace(/sender/g, 'receiver');
                    //divChat = divChat.replace(/darkable/g, '');
                }
                $('#msgarea').append(divChat);
            }


        }
        else {
            console.log("No chat found!");
        }

    };

    chatHub.client.addMessageToPrivateChat = function (message, fromUserName, fromUserEnroll, currentDateTime) {
        console.log('addMessageToPrivateChat called');
        
        var divChat = '<div class="row darkable sender-msg-box">'
            + '<div class="msg-box-row">'
            + '<div class="sender-box darkable">'
            + '<div class="msg darkable">' + message + '</div>'
            + '<div class="sender-msg-time-read-rec">'
            + '<div class="read-rec">//</div>'
            + '<div class="msg-time">' + currentDateTime + '</div>'

            + '</div>'
            + '</div>'
            + '</div >'
            + '</div >';

        
            divChat = divChat.replace(/sender/g, 'receiver');
            //divChat = divChat.replace(/darkable/g, '');
        
        $('#msgarea').append(divChat);
    }

    chatHub.client.addMessageToGroupChat = function (message, fromusername,datetime) {
        console.log('addMessageToGroupChat called');
        console.log(message);
        console.log();

        var Side = 'left';
        var TimeSide = 'right';
        if (message != null) {

            var divChat = '<div class="row darkable sender-msg-box">'
                + '<div class="msg-box-row">'
                + '<div class="sender-box darkable">'
                + '<div class="msg darkable">' + message + '</div>'
                + '<div class="sender-msg-time-read-rec">'
                + '<div class="read-rec">//</div>'
                + '<div class="msg-time">' +datetime.substring(10, 16) + '</div>'

                + '</div>'
                + '</div>'
                + '</div >'
                + '</div >';
            console.log('before');
            divChat = divChat.replace(/sender/g, 'receiver');
            console.log('after');
            $('#msgarea').append(divChat);
        }




    }
    chatHub.client.loadGroupChat = function (messages, grpname, enroll) {
        $('#msgarea').html('');
        console.log(grpname);

        $('#spanUser1').html('');
        $('#spanUser1').html('<Text>' + grpname + '</Text>');
        if (messages != null) {


            var i;
            
            for (i = 0; i < messages.length; i++) {
                
                var divChat = '<div class="row darkable sender-msg-box">'
                    + '<div class="msg-box-row">'
                    + '<div class="sender-box darkable">'
                    + '<div class="msg darkable">' + messages[i][1] + '</div>'
                    + '<div class="sender-msg-time-read-rec">'
                    + '<div class="read-rec">//</div>'
                    + '<div class="msg-time">' + messages[i][0].substring(10, 16) + '</div>'

                    + '</div>'
                    + '</div>'
                    + '</div >'
                    + '</div >';
                
                if (messages[i][2] == enroll) {
                    
                    divChat = divChat.replace(/sender/g, 'receiver');
                    
                }
                
                $('#msgarea').append(divChat);
            }
        }



        else {
            console.log("No chat found!");
        }

    };


    chatHub.client.alertMe = function (str) {
       



    };
    chatHub.client.messageReceived = function (userName, message, time, userimg) {

        AddMessage(userName, message, time, userimg);
        console.log("message received");

        // Display Message Count and Notification
        var CurrUser1 = $('#hdUserName').val();
        if (CurrUser1 != userName) {
            console.log("in if");

            var msgcount = $('#MsgCountMain').html();
            msgcount++;
            $("#MsgCountMain").html(msgcount);
            $("#MsgCountMain").attr("title", msgcount + ' New Messages');
            var Notification = 'New Message From ' + userName;
            IntervalVal = setInterval("ShowTitleAlert('SignalR Chat App', '" + Notification + "')", 800);

        }
    };


    chatHub.client.sendPrivateMessage = function (windowId, fromUserName, message, userimg, CurrentDateTime) {

        var ctrId = 'private_' + windowId;
        if ($('#' + ctrId).length == 0) {

            OpenPrivateChatBox(chatHub, windowId, ctrId, fromUserName, userimg);

        }

        var CurrUser = $('#hdUserName').val();
        var Side = 'right';
        var TimeSide = 'left';

        if (CurrUser == fromUserName) {
            Side = 'left';
            TimeSide = 'right';

        }
        else {
            var Notification = 'New Message From ' + fromUserName;
            IntervalVal = setInterval("ShowTitleAlert('SignalR Chat App', '" + Notification + "')", 800);

            var msgcount = $('#' + ctrId).find('#MsgCountP').html();
            msgcount++;
            $('#' + ctrId).find('#MsgCountP').html(msgcount);
            $('#' + ctrId).find('#MsgCountP').attr("title", msgcount + ' New Messages');
        }

        var divChatP = '<div class="direct-chat-msg ' + Side + '">' +
            '<div class="direct-chat-info clearfix">' +
            '<span class="direct-chat-name pull-' + Side + '">' + fromUserName + '</span>' +
            '<span class="direct-chat-timestamp pull-' + TimeSide + '"">' + CurrentDateTime + '</span>' +
            '</div>' +

            ' <img class="direct-chat-img" src="' + userimg + '" alt="Message User Image">' +
            ' <div class="direct-chat-text" >' + message + '</div> </div>';

        $('#' + ctrId).find('#divMessage').append(divChatP);

        // Apply Slim Scroll Bar in Private Chat Box
        var ScrollHeight = $('#' + ctrId).find('#divMessage')[0].scrollHeight;
        $('#' + ctrId).find('#divMessage').slimScroll({
            height: ScrollHeight
        });
    };

    chatHub.client.getUserData = function (userdata) {
        $('list_area').html('');
        var targetdiv = document.getElementById('list_area');
        targetdiv.style.display = "block";
        console.log(userdata);
        for (var i = 0; i < userdata.length; i++) {
            var toappend = '';
            if (i == (userdata.length - 1)) {
                 toappend = '<div><img src="' + userdata[i] + '" style="height:100px;width:100px;"><div>'
            }
            else {
                 toappend = '<div><input type="text" value="'+userdata[i]+'" /></div>';
            }
            targetdiv.innerHTML += toappend;
            console.log(userdata[i]);
        }
        targetdiv.innerHTML += '<asp:Button ID="UpdateDetail" runat="server" OnClick="UpdateDetails_Click" Text="Button" />';
        console.log('success 2');
    };
};


