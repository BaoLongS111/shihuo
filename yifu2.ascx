<%@ Control Language="C#" AutoEventWireup="true" CodeFile="yifu2.ascx.cs" Inherits="yifu2" %>
<asp:Label runat="server" ID="lblCount" CssClass="text-muted h4 mt-3 mb-3" Text="" />
<div class="row">
    <asp:Repeater runat="server" ID="rep">
        <ItemTemplate>
            <div class="col-md-4">
                <div class="card mr-1 mt-2 mb-3">
                    <a href="Details.aspx?id='<%#Eval("ID") %>'">
                        <img class="card-img-top" src='<%#Eval("图片") %>' width="180" height="260" alt="Card image cap" /></a>
                    <div class="card-body">
                        <h5 class="card-title"><%#Eval("名称") %></h5>
                        <p class="card-text">¥<%#Eval("价格") %></p>
                        <p class="card-text"><%#Eval("颜色") %></p>


                    </div>
                    <asp:Button runat="server" ID="btnDelete" CssClass="btn btn-danger btn-sm float-right mr-2" ToolTip='<%#Eval("ID") %>' Text="删除" OnClick="btnDelete_Click" />
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
