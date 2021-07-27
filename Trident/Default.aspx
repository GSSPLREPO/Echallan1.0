<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Trident.Default" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Trident</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/bootstrap-theme.min.css" rel="stylesheet" />
    <link rel="icon" type="image/png" sizes="96x96" href="images/Odisha_Police_Logo.png" />
    <style>
        body {
            background: url('Images/Background.JPG') no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            margin-top: 50px;
        }
    </style>
    <script src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
        function disableBack() { window.history.forward(); }
        $('.butn1').click(function () {
            $.ajax({
                url: "",
                context: document.body,
                success: function (s, x) {

                    $('html[manifest=saveappoffline.appcache]').attr('content', '');
                    $(this).html(s);
                }
            });
        });
    </script>
</head>
<body onload="disableBack()">
    <div>
        <div class="container">
            <div id="loginbox" style="margin-top: 50px; opacity: 0.8" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="panel-title">
                            Trident
                            <%--<div class="nav navbar-nav navbar-right">
                                Powered By :
                            <a href="http://www.banyantreesoft.com" target="_blank" style="color: white">
                                <img src="images/banyantreelogo.gif" /></a>
                            </div>--%>
                        </div>
                    </div>
                    <div style="padding-top: 30px" class="panel-body">
                        <form id="loginform" class="form-horizontal" role="form" runat="server">
                            <div class="input-group row" style="color: green; vertical-align: top; font-weight: bold; margin-top: -8px; height: 90px; width: 172px;">
                                <div class="col-md-10">Sign In</div>
                                <div class="col-md-2">
                                    <img src="../images/Berhampur_Police.png" style="margin-top: -8px; height: 150px; width: 165px; text-align: center;" /></div>
                            </div>
                            <br />
                            <div style="margin-bottom: 15px" class="input-group">
                                <div class="text-center">
                                    <asp:Label ID="lblMsg" ForeColor="Red" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="username"></asp:TextBox>
                            </div>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                            <%-- <div class="input-group">
                                    <div class="checkbox">
                                        <label>
                                            <input id="login-remember" type="checkbox" name="remember" value="1" />
                                            Remember me
                                        </label>
                                    </div>
                                </div>--%>
                            <div style="margin-top: 10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                    <%--<a id="btn-login" href="#" class="btn btn-success">Login  </a>--%>
                                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success pull-right butn1" Text="Login" OnClick="btnLogin_Click"></asp:Button>
                                    <%--<a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a>--%>
                                </div>
                            </div>
                            <div class="form-group">
                                <%--<div class="col-md-2">
                                    <img src="Images/cgsmLogo.gif" width="80" height="50" />
                                </div>--%>
                                <div class="col-md-9 control" style="display: inline-block; font-size: 12px;">
                                    <div>
                                        <%--Don't have an account!  <a href="#" onclick="$('#loginbox').hide(); $('#signupbox').show()">Sign Up Here </a><br />--%>© 2019 all rights reserved | BERHAMPUR POLICE
                                    </div>
                                </div>
                                <div class="col-md-3 pull-right" style="font-size: 12px;">
                                    Powered By :<a href="http://garimasystem.com/" target="_blank" style="color: white">
                                        <img src="images/GSSPL Rounded png.PNG" width="20" height="20" /></a>

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
