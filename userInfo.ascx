<%@ Control Language="C#" AutoEventWireup="true" CodeFile="userInfo.ascx.cs" Inherits="userInfo" %>
<link href="css/yangshi.css" rel="stylesheet" />

<asp:Repeater runat="server" ID="rep">
    <ItemTemplate>
        <div class="card" style="width: 18rem;">
            <img src='<%#Eval("头像") %>' class="card-img-top img-fluid" alt="" />
            <div class="card-body">
                <h5 class="card-title"><%#Eval("用户名") %></h5>
                <p class="card-text"><%#Eval("个性签名") %></p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">爱好：<%#Eval("爱好") %></li>
                <li class="list-group-item">性别：<%#Eval("性别") %></li>
                <li class="list-group-item">城市：<%#Eval("城市") %></li>
            </ul>
            <div class="card-body">
                <a href="login.aspx" class="card-link">切换登录</a>
            </div>
        </div>

    </ItemTemplate>
</asp:Repeater>

<ul class="list-group list-group-flush">
    <li class="list-group-item">
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                友情链接
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="http://www.baidu.com">百度</a>
                <a class="dropdown-item" href="#">网易</a>
                <a class="dropdown-item" href="#">腾讯</a>
            </div>
        </div>
    </li>
</ul>
