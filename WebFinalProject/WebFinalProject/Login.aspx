<%@ Page Language="C#" AutoEventWireup="true" enableEventValidation="false" CodeBehind="Login.aspx.cs" Inherits="WebFinalProject.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Panda Helper</title>
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

<!--Login Panel--> 


  <form id="form1" runat="server">
  <div class="container">
  <asp:Panel runat="server" ID="PanelLogin">
  <div class="hand"></div>
  <div class="hand rgt"></div>
  <h1>Welcome to "Panda Helper"</h1>


  <div class="form-group">
  <asp:TextBox runat="server"  required="required" TextMode="SingleLine" class="form-control" ID="email"/>
  <asp:Label class="form-label" AssociatedControlId="email" Text="Email" runat="server" />
  </div>

  <div class="form-group">
  <asp:TextBox runat="server"  required="required" TextMode="SingleLine" type="password" class="form-control" ID="password"/>
  <asp:Label class="form-label" AssociatedControlId="password" Text="Password" runat="server" />
    <p class="alert">Invalid Credentials..!!</p>
         </div>
        <div>
    <asp:label class="alert" ID="worngEmailPass" runat="server" Visible="false" Text="Wrong email or password"></asp:label>
      </div>
      <div class="form-group">
    <asp:Button class="btn" runat ="server" Text="Login" onClick ="login" ></asp:Button>
  </div>

    <asp:LinkButton ID="signIn" runat ="server" Text="Not a member? Sign up here" OnClick="signUp_page"> </asp:LinkButton>
</asp:Panel>

<script>
    $('#password').focusin(function () {
        $('form').addClass('up');
        console.log("pass");
    });
    $('#password').focusout(function () {
        $('form').removeClass('up');
        console.log("pass1");
    });

    $('#password2').focusin(function () {
        $('form').addClass('up');
        console.log("pass12");
    });
    $('#password2').focusout(function () {
        $('form').removeClass('up');
        console.log("pass123");
    });

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

    // validation
    $('.btn').click(function () {
        $('form').addClass('wrong-entry');
        setTimeout(function () {
            $('form').removeClass('wrong-entry');
        }, 3000);
    });
</script>


</div>
</form>
</body>
</html>
