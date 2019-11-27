<%@ Control Language="C#" AutoEventWireup="true" CodeFile="peijian.ascx.cs" Inherits="peijian" %>

<asp:Label runat="server" ID="lblCount" CssClass="text-muted h4 mt-3 mb-3" Text="" />
<div class="row">
    <asp:Repeater runat="server" ID="rep">
        <ItemTemplate>
            <div class="col-md-4 col-lg-6">
                <div class="card mr-1 mt-2 mb-3">
                    <a href="Details.aspx?id='<%#Eval("ID") %>'">
                        <img class="card-img-top" src='<%#Eval("图片") %>' width="180" height="260" alt="Card image cap" /></a>
                    <div class="card-body">
                        <h5 class="card-title"><%#Eval("名称") %></h5>
                        <p class="card-text">¥<%#Eval("价格") %></p>
                        <p class="card-text"><%#Eval("颜色") %></p>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
