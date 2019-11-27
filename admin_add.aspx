<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin_add.aspx.cs" Inherits="admin_add" %>

<%@ Register Src="~/addNew.ascx" TagPrefix="uc1" TagName="addNew" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:addNew runat="server" ID="addNew" />

</asp:Content>

