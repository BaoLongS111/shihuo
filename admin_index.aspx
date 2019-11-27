<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin_index.aspx.cs" Inherits="admin_index" %>

<%@ Register Src="~/yifu2.ascx" TagPrefix="uc1" TagName="yifu2" %>
<%@ Register Src="~/peijian2.ascx" TagPrefix="uc1" TagName="peijian2" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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
                <div class="col-md-10">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                            <asp:Label runat="server" ID="lblCount" CssClass="text-muted h4 mt-3 mb-3" Text="" />
                            <div class="row">
                                <asp:Repeater runat="server" ID="rep">
                                    <ItemTemplate>
                                        <div class="col-md-4">
                                            <div class="card mr-1 mt-2 mb-3" style="height: 480px;">
                                                <a href="admin_sp_info.aspx?id='<%#Eval("ID") %>'">
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



                        </div>


                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">

                            <uc1:yifu2 runat="server" id="yifu2" />

                        </div>
                        <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">

                            <uc1:peijian2 runat="server" id="peijian2" />

                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>



</asp:Content>

