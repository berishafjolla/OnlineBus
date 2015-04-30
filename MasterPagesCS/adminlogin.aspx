<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin-left: 27px">
<tr>
<td>
 <asp:Login ID="Login2" runat="server" OnAuthenticate="Login1_Authenticate" Height="177px" Width="267px">
    </asp:Login>
</td></tr></table>
</asp:Content>

