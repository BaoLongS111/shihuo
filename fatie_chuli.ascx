<%@ Control Language="C#" AutoEventWireup="true" CodeFile="fatie_chuli.ascx.cs" Inherits="fatie_chuli" %>

<h3 class="mt-3 mb-3">全部评论</h3>

<ul class="list-group list-group-flush myhref">
    <asp:Repeater runat="server" ID="rep" OnItemCommand="rep_ItemCommand">
        <ItemTemplate>
            <li class="list-group-item">
                <div class="row bg-primary" style="color: #fff;">
                    <div class="col-md-1">
                        <%# Eval("ID") %>
                    </div>
                    <div class="col-md-2"><%# Eval("用户名") %></div>
                    <div class="col-md-3"><%# Eval("内容") %></div>
                    <div class="col-md-2"><%# Eval("时间") %></div>
                    <div class="col-md-4">
                        <asp:Button runat="server" ID="btnDel" Text="删除" CssClass="btn-danger btn btn-sm float-right" CommandArgument='<%# Eval("ID") %>' CommandName="Delete" />
                    </div>
                </div>
            </li>
        </ItemTemplate>
    </asp:Repeater>
</ul>
