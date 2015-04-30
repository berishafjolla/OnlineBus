<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link type="text/css" rel="stylesheet" media="all" href="styles/styles.css" />
    <style type="text/css">
        .auto-style1
        {
            width: 35px;
        }
        .auto-style2
        {
            width: 252px;
        }
        .auto-style3
        {
            width: 35px;
            height: 163px;
        }
        .auto-style4
        {
            width: 252px;
            height: 163px;
        }
        .auto-style5
        {
            width: 35px;
            height: 30px;
        }
        .auto-style6
        {
            width: 252px;
            height: 30px;
        }
    </style>
</head>
<body style="background-image: url('/MasterPagesCS/images/wood-bg.jpg');">
    <div>
    <form id="form2" runat="server">
<div style="   margin: auto; height: 140px;">
<table style="border: thick ridge #000000; margin-left: 380px; background-image: url('images/free_hexa_pattern_cc0_by_black_light_studio-d4ig12f.png'); background-size: cover; background-repeat: no-repeat; color: #FFFFFF; margin-top: 125px;">
<tr>
<td class="auto-style1">
Username:
</td>
<td class="auto-style2">
<asp:TextBox ID="txtUserName" runat="server" Width="149px"/>
</td>
</tr>
<tr>
<td class="auto-style5">
    Fjalekalimi:
</td>
<td class="auto-style6">
<asp:TextBox ID="txtPWD" runat="server" TextMode="Password"/>
</td>
</tr>
<tr>
<td class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" OnMenuItemClick="Menu1_MenuItemClick" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#FFFBD6" />
        <DynamicSelectedStyle BackColor="#FFCC66" />
        <Items>
            <asp:MenuItem NavigateUrl="Regjistrimi.aspx" Text="Regjistrohu" Value="Regjistrohu"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#FFCC66" />
        <StaticItemTemplate>
            <%# Eval("Text") %>
        </StaticItemTemplate>
    </asp:Menu>
</td>
<td class="auto-style4">
<asp:Button ID="btnSubmit" runat="server" Text="Kyqu" onclick="btnSubmit_Click" style="margin-left: 43px; margin-top: 0px;" Height="22px" Width="61px" BackColor="#CCCCCC" BorderStyle="Ridge" />
</td>
    
</tr>
</table>
</div>
        
    
    </form>
    </div>
    <p>
    </p>
    </body>
</html>
