<%@ Control Language="C#" AutoEventWireup="true" CodeFile="addNew.ascx.cs" Inherits="addNew" %>

<div class="container p-5" style="min-height: 500px;">
    <h4>新增商品</h4>

    <div class="form-group mt-4">
        <label>商品名：</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txtShoeName" placeholder="" />
    </div>

    <div class="form-group mt-4">
        <label>种类：</label>
        <asp:DropDownList runat="server" ID="ddl" CssClass="form-control">
            <asp:ListItem>鞋子</asp:ListItem>
            <asp:ListItem>衣服</asp:ListItem>
            <asp:ListItem>配件</asp:ListItem>
        </asp:DropDownList>
    </div>

    <div class="form-group">
        <label>商品介绍：</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txtShoeInfo" placeholder="" Rows="3" TextMode="MultiLine" />
    </div>

    <div class="form-group">
        <label>类型：</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txtShoeType" placeholder="" />
    </div>

    <div class="form-group">
        <label>价格：</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txtShoePrice" placeholder="" />
    </div>

    <div class="form-group">
        <label>颜色：</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txtShoeColor" placeholder="" />
    </div>

    <div class="form-group">
        <label>色值：</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txtShoeColorNum" placeholder="" />
    </div>

    <div class="form-group">
        <label>代码编号：</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txtShoeStyle" placeholder="" />
    </div>

    <div class="form-group">
        <label>图片：</label>

        <br />
        <label>封面图片：</label>
        <asp:FileUpload ID="FileUpload_FengMian" runat="server" />


        <br />
        <label>详情图片：</label>
        <asp:FileUpload ID="FileUpload_XiangQing1" runat="server" />

        <br />
        <label>详情图片：</label>
        <asp:FileUpload ID="FileUpload_XiangQing2" runat="server" />

        <br />
        <label>详情图片：</label>
        <asp:FileUpload ID="FileUpload_XiangQing3" runat="server" />

        <br />
        <label>详情图片：</label>
        <asp:FileUpload ID="FileUpload_XiangQing4" runat="server" />
    </div>


    <asp:Button runat="server" ID="btnJieSuan" CssClass="btn btn-danger rounded-pill" Text="上传" OnClick="btnJieSuan_Click" />


</div>
