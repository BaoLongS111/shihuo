<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="header" %>

<link href="css/yangshi.css" rel="stylesheet" />

<header id="sh_header" class="bg-dark">
    <div class="container p-4">
        <div class="row d-flex justify-content-end align-items-center">
            <div class="col-md-2 myhref1">
                <a href="Default.aspx">识货</a> 
            </div>
            <div class="col-md-4">
                识货的运动X装备X潮流
            </div>
            <div class="offset-md-2 col-md-2">
                <div class="form-inline">
                    <asp:Button runat="server" ID="btnLogin" CssClass="btn btn-outline-success mr-3" Text="登录" OnClick="btnLogin_Click" />
                    <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-outline-success" Text="注册" OnClick="btnRegister_Click" />
                </div>
            </div>
            <div class="col-md-2">
                <asp:Repeater runat="server" ID="rep">
                    <ItemTemplate>
                        <img src='<%#Eval("头像") %>' class="rounded-circle" height="60" width="60" alt="" />
                    </ItemTemplate>
                </asp:Repeater>
                <asp:Label runat="server" ID="lblTip" CssClass="float-right mt-4 mr-5 h6" Visible="false" Text="" />
            </div>
        </div>
    </div>
</header>

<section id="sh_navbar">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Default.aspx">首页<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="fatie.aspx">论坛</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="rili.aspx">发售日历</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="paihao.aspx">排号抽签</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="mine.aspx">我的</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="admin_login.aspx">管理员登录</a>
                    </li>
                </ul>
                <div class="form-inline my-2 my-lg-0">
                    <asp:TextBox runat="server" ID="txtSearch" CssClass="form-control mr-sm-2" />
                    <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-outline-primary my-2 my-sm-0" Text="搜索" OnClick="btnSearch_Click" />
                </div>
            </div>
        </div>
    </nav>
</section>
