<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin_fatie.aspx.cs" Inherits="Default2" %>

<%@ Register Src="~/fatie_chuli.ascx" TagPrefix="uc1" TagName="fatie_chuli" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <uc1:fatie_chuli runat="server" ID="fatie_chuli" />

</asp:Content>

