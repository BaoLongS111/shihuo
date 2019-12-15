<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="rili.aspx.cs" Inherits="rili" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="bd-example">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/Kobe IV Protro3.png" class="d-block w-100" alt="..."/>
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Kobe IV Protro</h5>
                        <p>Kobe IV Protro 篮球鞋采撷 2007 元年款的经典设计，以出众性能焕新演绎。忠实再现令人难忘的出众美学，革新设计造就响应灵敏的性能和顺畅平稳的舒适步履体验。</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/Kobe IV Protro1.png" class="d-block w-100" alt="..."/>
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Kobe IV Protro</h5>
                        <p>Kobe IV Protro 篮球鞋采撷 2007 元年款的经典设计，以出众性能焕新演绎。忠实再现令人难忘的出众美学，革新设计造就响应灵敏的性能和顺畅平稳的舒适步履体验。</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/Kobe IV Protro2.png" class="d-block w-100" alt="..."/>
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Kobe IV Protro</h5>
                        <p>Kobe IV Protro 篮球鞋采撷 2007 元年款的经典设计，以出众性能焕新演绎。忠实再现令人难忘的出众美学，革新设计造就响应灵敏的性能和顺畅平稳的舒适步履体验。</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>


    <asp:Repeater runat="server" ID="rep">
        <ItemTemplate>
            <h4 class="text-muted mb-3 mt-3"><%#Eval("时间") %></h4>

            <div class="row mb-3">
                <div class="col-md-3">
                    <img src='<%#Eval("图片") %>' alt="" class="img-fluid" />
                </div>
                <div class="col-md-9" style="border-bottom: 1px solid #ccc;">
                    <div>
                        <h5 class="float-left"><%#Eval("名称") %></h5>
                        <h6 class="text-muted float-right">¥<%#Eval("价格") %></h6>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>


</asp:Content>

