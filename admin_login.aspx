<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no" />
    <title>识货APP潮流鞋服购买</title>

    <link href="lib/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/yangshi.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/bootsnav.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/responsive.css" />

</head>
<body>
    <form id="form1" runat="server">
        <section class="signin">
            <div class="container">

                <div class="sign-content">
                    <h2>管理员登录</h2>

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="signin-form">
                                
                                    <div class="form-group">
                                        <label for="signin_form">账号：</label>
                                        <asp:TextBox runat="server" ID="txtAdminName" CssClass="form-control" placeholder="输入用户名" />
                                    </div>

                                    <div class="form-group">
                                        <label for="signin_form">密码：</label>
                                        <asp:TextBox runat="server" ID="txtPwd" CssClass="form-control" placeholder="输入密码" TextMode="Password" />
                                    </div>
                               
                            </div>
                            <!--/.signin-form -->
                        </div>
                        <!--/.col -->
                    </div>
                    <!--/.row -->

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="signin-password">
                                <div class="awesome-checkbox-list">
                                    <ul class="unstyled centered">

                                        <li>
                                            <input class="styled-checkbox" id="styled-checkbox-2" type="checkbox" value="value2">
                                            <label for="styled-checkbox-2">记住密码</label>
                                        </li>

                                        <li>
                                            <a href="#">忘记密码?</a>
                                        </li>

                                    </ul>
                                </div>
                                <!--/.awesome-checkbox-list -->
                            </div>
                            <!--/.signin-password -->
                        </div>
                        <!--/.col -->
                    </div>
                    <!--/.row -->

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="signin-footer">
                                <asp:Button runat="server" ID="btnLogin" Text="登录" CssClass="btn signin_btn" OnClick="btnLogin_Click"/>
                            </div>
                            <!--/.signin-footer -->
                        </div>
                        <!--/.col-->
                    </div>
                    <!--/.row -->

                </div>
            </div>
            <!--/.container -->

        </section>
        <!--/.signin -->
    </form>


    <script src="assets/js/jquery.js"></script>

    <!--modernizr.min.js-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

    <!--bootstrap.min.js-->
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- bootsnav js -->
    <script src="assets/js/bootsnav.js"></script>

    <!-- jquery.sticky.js -->
    <script src="assets/js/jquery.sticky.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>


    <!--Custom JS-->
    <script src="assets/js/custom.js"></script>
</body>
</html>