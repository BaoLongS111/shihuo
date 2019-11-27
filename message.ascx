<%@ Control Language="C#" AutoEventWireup="true" CodeFile="message.ascx.cs" Inherits="message" %>
<div class="p-3" style="border-bottom: 1px solid #ccc;">
    <h4 class="mb-3">评论</h4>
    <div class="input-group flex-nowrap">
        <div class="input-group-prepend">
            <span class="input-group-text" id="addon-wrapping">✍</span>
        </div>
        <asp:TextBox runat="server" ID="txtMessage" CssClass="form-control" placeholder="请输入评论" TextMode="MultiLine" Rows="3" />
    </div>
    <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-primary btn-sm rounded-pill mt-3" Text="评论" OnClick="btnSubmit_Click" />
</div>

<div class="mt-3">
    <asp:Repeater runat="server" ID="rep">
        <ItemTemplate>
            <div class="row p-3">
                <div class="col-md-1">
                    <img src="images/img.jpg" alt="" class="img-thumbnail rounded-circle" width="70" height="70" />
                </div>
                <div class="col-md-11" style="border-bottom: 1px solid #ccc;">
                    <h6><span class="text-danger"><%# Eval("用户名") %>：</span><span style="color: #000;"><%# Eval("内容") %></span></h6>
                    <div class="mt-3 text-muted"><%# Eval("时间") %></div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
