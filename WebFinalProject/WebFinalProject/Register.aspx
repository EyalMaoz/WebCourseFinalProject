﻿<%@ Page Language="C#" AutoEventWireup="true" enableEventValidation="false" CodeBehind="Register.aspx.cs" Inherits="WebFinalProject.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
            body {
            background: #83b484;
            text-align: center;
            font-family: 'Roboto', sans-serif;
        }
    </style>
    <title>Register Panda Helper</title>

     <!-- Required meta tags -->
     <meta charset="UTF-8">
     <%--bootstrapcdn - in google - this is the palce we took this link, for the css class--%>
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet">
    <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/MorphSVGPlugin.min.js?r=182" ></script>    
    <link href="https://fonts.googleapis.com/css2?family=Poiret+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&display=swap" rel="stylesheet">
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <link rel="stylesheet" type="text/css" href="styles.css">
  
</head>
<body>
<!-- partial:index.partial.html -->
<div class="panda">
  <div class="ear"></div>
  <div class="face">
    <div class="eye-shade"></div>
    <div class="eye-white">
      <div class="eye-ball"></div>
    </div>
    <div class="eye-shade rgt"></div>
    <div class="eye-white rgt">
      <div class="eye-ball"></div>
    </div>
    <div class="nose"></div>
    <div class="mouth"></div>
  </div>
  <div class="body"> </div>
  <div class="foot">
    <div class="finger"></div>
  </div>
  <div class="foot rgt">
    <div class="finger"></div>
  </div>
</div>


 <form id="form1" runat="server">

<!--SignUP Panel--> 
<div class="container">
  <asp:Panel runat="server" ID="PanelRegister">
  <form>
  <div class="hand"></div>
  <div class="hand rgt"></div>

  <div class="form-group">
  <asp:TextBox runat="server"  required="required" TextMode="SingleLine" class="form-control" ID="email"/>
  <asp:Label class="form-label" AssociatedControlId="email" Text="Email" runat="server" />
  </div>

  <div class="form-group">
  <asp:TextBox runat="server"  required="required" TextMode="SingleLine" type="password" class="form-control" ID="password"/>
  <asp:Label class="form-label" AssociatedControlId="password" Text="Password" runat="server" />
  </div>

  <div class="form-group">
  <asp:TextBox runat="server"  required="required" TextMode="SingleLine" type="password" class="form-control" ID="password2"/>
  <asp:Label class="form-label" AssociatedControlId="password2" Text="Confirm Password" runat="server" />
  <asp:Button class="btn" runat ="server" Text="Sign Up" onClick ="register"></asp:Button>
  </div>
  </form>
<asp:LinkButton ID="signIn" runat ="server" Text="Already a member? Sign in here" OnClick="login_page"> </asp:LinkButton>

</asp:Panel>

</div>
</form>

 <script>
    $('#password').focusin(function () {
        $('form').addClass('up');
    });
    /*$('#password').focusout(function () {
        $('form').removeClass('up');
        console.log("pass1");
    });*/

    $('#password2').focusin(function () {
        $('form').addClass('up');
    });
    /*$('#password2').focusout(function () {
        $('form').removeClass('up');
        console.log("pass123");
    });*/
    function ShowAlert(text) {
        alert("test")
        var alertComponent = document.getElementById("test");
        alertComponent.innerHTML = text;

    }
    // Panda Eye move
    $(document).on("mousemove", function (event) {
        var dw = $(document).width() / 15;
        var dh = $(document).height() / 15;
        var x = event.pageX / dw;
        var y = event.pageY / dh;
        $('.eye-ball').css({
            width: x,
            height: y
        });
    });
    function ShowInvalidateCredentials() {
        $('form').addClass('wrong-entry');
        setTimeout(function () {
            $('form').removeClass('wrong-entry');
        }, 3000);
    }
    // validation - Eyal - this func make the form shake
    //$('.btn').click(function () {
    //    /*$('form').addClass('wrong-entry');
    //    setTimeout(function () {
    //        $('form').removeClass('wrong-entry');
    //    }, 3000);*/
    //});
</script>

</body>
</html>
