<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="goumai.aspx.cs" Inherits="goumai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="container">

        <div class="sign-content">

            <h2>购买</h2>

            <div class="row">
                <div class="col-sm-12">
                    <div class="signin-form">
                        <!--/.form-col1 -->


                        <div class="form-group">
                            <label for="signin_form">总金额：</label>
                            <asp:TextBox runat="server" ID="txtTotal" CssClass="form-control" Enabled="false" />
                        </div>

                        <div class="form-group">
                            <label for="signin_form">姓名：</label>
                            <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control" placeholder="输入收货人姓名" />
                        </div>
                        <!--/.form-group -->
                        <div class="form-group">
                            <label for="signin_form">电话：</label>
                            <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control" placeholder="我们不会泄露您的个人信息" />
                        </div>
                        <!--/.form-group -->
                        <div class="form-group">
                            <label for="signin_form">地址：</label>
                            <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" placeholder="输入收货地址" />
                        </div>
                        <div class="form-group">
                            <label for="signin_form">付款方式：</label>
                            <asp:DropDownList runat="server" ID="ddl" CssClass="form-control">
                                <asp:ListItem>微信</asp:ListItem>
                                <asp:ListItem>支付宝</asp:ListItem>
                                <asp:ListItem>银联</asp:ListItem>
                                <asp:ListItem>QQ</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label for="signin_form">备注：</label>
                            <asp:TextBox runat="server" ID="txtRemarks" CssClass="form-control" placeholder="备注信息"/>
                        </div>
                        <!--/.form-group -->

                        <!--/form -->
                    </div>
                    <!--/.signin-form -->
                </div>
                <!--/.col -->
            </div>
            <!--/.row -->

            <div class="row">
                <div class="col-sm-12">
                    <div class="signin-footer">
                        <asp:Button runat="server" ID="btnOK" Text="下单" CssClass="btn signin_btn" OnClick="btnOK_Click" />
                    </div>
                    <!--/.signin-footer -->
                </div>
                <!--/.col-->
            </div>
            <!--/.row -->

        </div>
    </div>





</asp:Content>

