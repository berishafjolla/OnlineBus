<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="non ac.aspx.cs" Inherits="non_ac" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 311px;
        }
        .style4
        {
            width: 579px;
        }
    .style5
    {
        width: 376px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="style1">
            <tr>
                <td class="style3">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/exterior/image.axd.jpg" Width="310px" 
                        PostBackUrl="~/bus10.aspx" />
                </td>
                <td class="style4">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="240px" 
                        ImageUrl="~/exterior/images.jpg" PostBackUrl="~/bus011.aspx" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="238px" 
                        ImageUrl="~/exterior/IMG0669A.jpg" Width="352px" 
                        PostBackUrl="~/bus12.aspx" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:ImageButton ID="ImageButton4" runat="server" 
                        ImageUrl="~/exterior/IMG1523A.jpg" Width="308px" 
                        PostBackUrl="~/bus13.aspx" />
                </td>
                <td class="style4">
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="240px" 
                        ImageUrl="~/exterior/nonac11_big.jpg" Width="317px" 
                        PostBackUrl="~/bus14.aspx" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="235px" 
                        ImageUrl="~/exterior/praxair_45454.jpg" Width="350px" 
                        PostBackUrl="~/bus15.aspx" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
    <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/more.aspx">Me shume</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
</table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

