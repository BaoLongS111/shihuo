<%@ Control Language="C#" AutoEventWireup="true" CodeFile="shopcar.ascx.cs" Inherits="shopcar" %>
<link href="css/yangshi.css" rel="stylesheet" />

<asp:Label runat="server" ID="lblTip" CssClass="h6 d-block mt-4 text-dark" Text="" />

<asp:DataList runat="server" ID="dl" OnItemCommand="dl_ItemCommand">
    <ItemTemplate>
        <div class="row mb-3">
            <div class="col-md-3">
                <img src="<%# DataBinder.Eval(Container.DataItem,"图片") %>" alt="" class="img-fluid rounded-top" />
            </div>
            <div class="col-md-9" style="border-bottom: 1px solid #ccc;">
                <div>
                    <h5 class="float-left"><%# DataBinder.Eval(Container.DataItem,"名称") %></h5>
                    <h6 class="text-muted float-right">¥<%# DataBinder.Eval(Container.DataItem,"价格") %></h6>
                </div>
                <div class="clearfix"></div>
                <h6 class="text-muted mt-2"><%# DataBinder.Eval(Container.DataItem,"类型") %></h6>
                <h6 class="text-muted mt-2"><%# DataBinder.Eval(Container.DataItem,"颜色") %></h6>
                <div class="mt-2">
                    <h6 class="text-muted float-left mr-2">尺码：<%# DataBinder.Eval(Container.DataItem,"尺寸") %></h6>
                    <h6 class="text-muted float-left">数量：<%# DataBinder.Eval(Container.DataItem,"数量") %></h6>
                </div>
                <div class="clearfix"></div>
                <asp:Button runat="server" CssClass="btn btn-danger btn-sm float-right" ID="btnDel" CommandName="Delete" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"GID") %>' Text="删除" />
            </div>
        </div>
    </ItemTemplate>
</asp:DataList>

<div style="padding: 8px 380px;">
    <asp:Button runat="server" ID="btnPay" CssClass="btn btn-success rounded-pill btn-block" Text="¥599 结算" OnClick="btnPay_Click" />
</div>
