<%@ Control Language="C#" AutoEventWireup="true" CodeFile="admin_header.ascx.cs" Inherits="admin_header" %>

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
                </div>
            </div>
            <div class="col-md-2">

                <img src="images/genji3.png" class="rounded-circle" height="60" width="60" alt="" />

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
                        <a class="nav-link" href="admin_index.aspx">首页<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="admin_order.aspx">订单管理</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="admin_fatie.aspx">论坛管理</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="admin_add.aspx">新增商品</a>
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
