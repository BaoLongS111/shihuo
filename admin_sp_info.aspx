<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin_sp_info.aspx.cs" Inherits="admin_sp_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/responsive.css" />

    <link rel="stylesheet" href="css/fontawesome.css" />
    <link rel="stylesheet" href="css/tooplate-main.css" />
    <link rel="stylesheet" href="css/owl.css" />
    <link rel="stylesheet" href="css/flex-slider.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="single-product">
        <div class="container">
            <div class="row">

                <asp:Repeater runat="server" ID="rep" OnItemCommand="rep_ItemCommand">
                    <ItemTemplate>

                        <div class="col-md-12">
                            <div class="section-heading">
                                <div class="line-dec"></div>
                                <h1><%#Eval("种类") %></h1>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="product-slider">
                                <div id="slider" class="flexslider">
                                    <ul class="slides">
                                        <li>
                                            <img src='<%# Eval("图片1") %>' />
                                        </li>
                                        <li>
                                            <img src='<%# Eval("图片2") %>' />
                                        </li>
                                        <li>
                                            <img src='<%# Eval("图片3") %>' />
                                        </li>
                                        <li>
                                            <img src='<%# Eval("图片4") %>' />
                                        </li>
                                    </ul>
                                </div>
                                <div id="carousel" class="flexslider">
                                    <ul class="slides">
                                        <li>
                                            <img src='<%# Eval("图片1") %>' />
                                        </li>
                                        <li>
                                            <img src='<%# Eval("图片2") %>' />
                                        </li>
                                        <li>
                                            <img src='<%# Eval("图片3") %>' />
                                        </li>
                                        <li>
                                            <img src='<%# Eval("图片4") %>' />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="right-content">
                                <asp:TextBox runat="server" ID="txtName" Text='<%#Eval("名称") %>' CssClass="form-control" />
                                <asp:TextBox runat="server" ID="txtPrice" Text='<%#Eval("价格") %>' CssClass="form-control" />
                                <asp:TextBox runat="server" ID="txtInfo" Text='<%#Eval("介绍") %>' CssClass="form-control" />


                                <div class="down-content">
                                    <div class="categories">
                                        <asp:TextBox runat="server" ID="txtColor" Text='<%#Eval("颜色") %>' CssClass="form-control" />
                                    </div>
                                    <div class="share">
                                        <asp:TextBox runat="server" ID="txtColorNum" Text='<%#Eval("色值") %>' CssClass="form-control" />
                                    </div>
                                </div>
                            </div>

                            <asp:Button runat="server" Text="完成修改" CssClass="btn btn-block btn-danger rounded-pill mt-5 mb-5" CommandName="btnModify" CommandArgument='<%#Eval("ID") %>'/>
                            <span>其 他 说 明 ：</span>
                            <p>
                                本店严格遵守《中华人民共和国广告法》等相关规定，并已尽最大注意义务及审查义务，竭力避免出现相关禁用词（如“顶级”、“最佳”
                    等极限化词汇）。如果本店全网包括产品详情页及产品标题等出现禁用词的，一律非本店主观意愿而为，客户不可将其作为在本店下单购
                    物的参考依据。特此说明。
                            </p>



                        </div>
                    </ItemTemplate>
                </asp:Repeater>






            </div>
        </div>
    </div>






</asp:Content>

