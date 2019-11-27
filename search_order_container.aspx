<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="search_order_container.aspx.cs" Inherits="search_order_container" %>

<%@ Register Src="~/search_order.ascx" TagPrefix="uc1" TagName="search_order" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <uc1:search_order runat="server" ID="search_order" />
</asp:Content>

