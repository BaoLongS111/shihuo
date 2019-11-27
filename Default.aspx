<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/userInfo.ascx" TagPrefix="uc1" TagName="userInfo" %>
<%@ Register Src="~/yifu.ascx" TagPrefix="uc1" TagName="yifu" %>
<%@ Register Src="~/peijian.ascx" TagPrefix="uc1" TagName="peijian" %>






<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-cn">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no" />
    <title>识货APP潮流鞋服购买</title>

    <link href="lib/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/yangshi.css" rel="stylesheet" />
</head>
<body>

    <form runat="server">

        <uc1:header runat="server" ID="header" />

        <section id="main_body">
            <div class="container">
                <div class="row mt-3">
                    <div class="col-md-2 text-center">
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active align-items-center" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">鞋子</a>
                            <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">衣服</a>
                            <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">配件</a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="tab-content" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                <asp:Label runat="server" ID="lblCount" CssClass="text-muted h4 mt-3 mb-3" Text="" />
                                <div class="row">
                                    <asp:Repeater runat="server" ID="rep">
                                        <ItemTemplate>
                                            <div class="col-md-6">
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



                            </div>


                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">

                                <uc1:yifu runat="server" ID="yifu" />

                            </div>
                            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">

                                <uc1:peijian runat="server" ID="peijian" />

                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">

                        <uc1:userInfo runat="server" ID="userInfo" />

                    </div>


                </div>
            </div>
        </section>


        <uc1:footer runat="server" ID="footer" />

    </form>

    <script src="lib/js/jquery-3.3.1.js"></script>
    <script src="lib/js/popper.js"></script>
    <script src="lib/js/bootstrap.min.js"></script>
</body>
</html>
