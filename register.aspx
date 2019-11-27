<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no" />
    <title>识货APP潮流鞋服购买</title>

    <link href="lib/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/yangshi.css" rel="stylesheet" />

    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/bootsnav.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/responsive.css" />

</head>
<body>
    <form id="form1" runat="server">
        <section class="signin signup">
            <div class="container">

                <div class="sign-content">
                    <h2>注册</h2>

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="signin-form">

                                <div class="form-col">
                                    <div class="form-group">
                                        <label for="signin_form">用户名：</label>
                                        <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control" placeholder="输入用户名" />
                                    </div>
                                    <!--/.form-group -->
                                </div>
                                <!--/.form-col -->
                                <div class="form-col1">
                                    <div class="form-group">
                                        <label for="signin_form">密码：</label>
                                        <asp:TextBox runat="server" ID="txtPwd" CssClass="form-control" placeholder="输入密码" />
                                    </div>
                                    <!--/.form-group -->
                                </div>
                                <!--/.form-col1 -->
                                <div class="form-group">
                                    <label for="signin_form">确认密码：</label>
                                    <asp:TextBox runat="server" ID="txtPwd2" CssClass="form-control" placeholder="确认密码" />
                                </div>
                                <!--/.form-group -->
                                <div class="form-group">
                                    <label for="signin_form">个性签名：</label>
                                    <asp:TextBox runat="server" ID="txtGeXing" CssClass="form-control" placeholder="输入个性签名" />
                                </div>
                                <!--/.form-group -->
                                <div class="form-group">
                                    <label for="signin_form">爱好：</label>
                                    <asp:TextBox runat="server" ID="txtHobby" CssClass="form-control" placeholder="输入爱好" />
                                </div>
                                <div class="form-group">
                                    <label for="signin_form">城市：</label>
                                    <asp:TextBox runat="server" ID="txtCity" CssClass="form-control" placeholder="输入城市" />
                                </div>
                                <div class="form-group">
                                    <label for="signin_form">性别：</label>
                                    <asp:DropDownList runat="server" ID="ddl" CssClass="form-control">
                                        <asp:ListItem>男</asp:ListItem>
                                        <asp:ListItem>女</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label for="signin_form">头像：</label>
                                    <asp:FileUpload ID="FileUpload_FengMian" runat="server" CssClass="form-control" />
                                </div>

                                <!--/.form-group -->

                                <!--/form -->
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
                                            <label for="styled-checkbox-2">同意识货网站用户协议</label>
                                        </li>

                                        <li class="text-danger">
                                            <asp:Label runat="server" ID="lblTip" Text="" /></li>

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
                                <asp:Button runat="server" ID="btnRegister" Text="立即注册" CssClass="btn signin_btn" OnClick="btnRegister_Click" />
                                <p>
                                    已有账号 ?
									<a href="login.aspx">登录</a>
                                </p>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/bootsnav.js"></script>
    <script src="assets/js/jquery.sticky.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>
