<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                                <h4><%#Eval("名称") %></h4>
                                <h6>¥<%#Eval("价格") %></h6>
                                <p><%#Eval("介绍") %></p>
                                <span>订 购 数 量 </span>

                                <label for="quantity">选择:</label>
                                <asp:DropDownList runat="server" ID="ddl" CssClass="">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList>

                                <span>订 购 尺 寸 </span>
                                <label for="quantity">输入:</label>
                                <asp:TextBox runat="server" ID="txtSize" CssClass="quantity-text" />

                                <asp:Button runat="server" ID="btnOrderNow" Text="立即购买" CssClass="button" CommandArgument='<%#Eval("ID") %>' CommandName="btnOrder" />

                                
                                <div class="down-content">
                                    <div class="categories">
                                        <h6>颜色种类: <%#Eval("颜色") %></h6>
                                    </div>
                                    <div class="share">
                                        <h6>色值: <%#Eval("色值") %></h6>
                                    </div>
                                </div>
                            </div>

                            <asp:Button runat="server" ID="btnAddShopCar" Text="加入购物车" CssClass="btn btn-block btn-danger rounded-pill mt-5 mb-5" CommandName="btnShopCar" CommandArgument='<%#Eval("ID") %>' />
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

