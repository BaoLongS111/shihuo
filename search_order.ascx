<%@ Control Language="C#" AutoEventWireup="true" CodeFile="search_order.ascx.cs" Inherits="search_order" %>

<asp:Label runat="server" ID="lblTip" CssClass="h6 d-block mt-4 text-dark" Text="" />

<asp:DataList runat="server" ID="dl">
    <ItemTemplate>
        <div class="row mb-3">
            <div class="col-md-3">
                <img src="<%# DataBinder.Eval(Container.DataItem,"图片") %>" alt="" class="img-fluid" />
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
                <asp:Button runat="server" CssClass="btn btn-success btn-sm float-right disabled" ID="btnDel" Text='<%# DataBinder.Eval(Container.DataItem,"状态") %>' />
                <asp:Label runat="server" CssClass="text-muted float-right mr-3" ID="btnID" Text='<%# DataBinder.Eval(Container.DataItem,"订单编号") %>' />
                <label class="float-right mr-2">订单编号：</label>
            </div>
        </div>
    </ItemTemplate>
</asp:DataList>