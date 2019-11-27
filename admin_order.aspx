<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin_order.aspx.cs" Inherits="admin_order" %>

<%@ Register Src="~/order_chuli.ascx" TagPrefix="uc1" TagName="order_chuli" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <uc1:order_chuli runat="server" ID="order_chuli" />

</asp:Content>

