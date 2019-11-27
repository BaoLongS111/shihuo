<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="mine.aspx.cs" Inherits="mine" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/shopcar.ascx" TagPrefix="uc1" TagName="shopcar" %>
<%@ Register Src="~/dingdan.ascx" TagPrefix="uc1" TagName="dingdan" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/yangshi.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="main_body">
        <div class="container">
            <div class="row mt-3">
                <div class="col-md-2 text-center">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link active align-items-center" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">购物车</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">订单</a>
                        <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">发帖纪录</a>
                    </div>
                </div>
                <div class="col-md-10">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                            <div class="row">
                                <uc1:shopcar runat="server" ID="shopcar" />
                            </div>

                        </div>


                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">

                            <uc1:dingdan runat="server" ID="dingdan" />

                        </div>
                        <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">

                            <div class="card-group">
                                <div class="card mr-1 mt-2">
                                    <img class="card-img-top" src="images/genji3.png" width="200" height="200" alt="Card image cap" />
                                    <div class="card-body">
                                        <h5 class="card-title">配件</h5>
                                        <p class="card-text">这是配件的介绍</p>
                                        <p class="card-text">
                                            <button class="btn btn-success" type="submit">查看详情</button>
                                        </p>
                                    </div>
                                </div>
                                <div class="card mr-1 mt-2">
                                    <img class="card-img-top" src="images/genji3.png" width="200" height="200" alt="Card image cap" />
                                    <div class="card-body">
                                        <h5 class="card-title">配件</h5>
                                        <p class="card-text">这是配件的介绍</p>
                                        <p class="card-text">
                                            <button class="btn btn-success" type="submit">查看详情</button>
                                        </p>
                                    </div>
                                </div>
                                <div class="card mr-1 mt-2">
                                    <img class="card-img-top" src="images/genji3.png" width="200" height="200" alt="Card image cap" />
                                    <div class="card-body">
                                        <h5 class="card-title">配件</h5>
                                        <p class="card-text">这是配件的介绍</p>
                                        <p class="card-text">
                                            <button class="btn btn-success" type="submit">查看详情</button>
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>



</asp:Content>

