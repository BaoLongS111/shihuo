<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="fatie.aspx.cs" Inherits="fatie" %>

<%@ Register Src="~/message.ascx" TagPrefix="uc1" TagName="message" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:message runat="server" ID="message" />

</asp:Content>

