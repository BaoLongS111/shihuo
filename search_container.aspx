<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="search_container.aspx.cs" Inherits="search_container" %>

<%@ Register Src="~/search.ascx" TagPrefix="uc1" TagName="search" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <uc1:search runat="server" ID="search" />

</asp:Content>

