<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ac.aspx.cs" Inherits="ac" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 241px;
        }
        .style4
        {
            width: 214px;
        }
    .style5
    {
        width: 348px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style1" style="width: 79%">
            <tr>
                <td class="style3">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/project/bus1.jpg" 
                        Width="248px" DescriptionUrl="~/bus1.aspx" PostBackUrl="~/bus1.aspx" />
                </td>
                <td class="style4">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="154px" 
                        ImageUrl="~/project/shiya ac.jpg" onclick="ImageButton2_Click" 
                        Width="217px" DescriptionUrl="~/bus2.aspx" PostBackUrl="~/bus2.aspx" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="163px" 
                        ImageUrl="~/project/903.jpg" Width="240px" PostBackUrl="~/bus3.aspx" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:ImageButton ID="ImageButton4" runat="server" 
                        ImageUrl="~/ac bus/ac bus 1.jpg" PostBackUrl="~/bus4.aspx" Width="245px" />
                </td>
                <td class="style4">
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="173px" 
                        ImageUrl="~/ac bus/ac bus 2.jpg" PostBackUrl="~/bus5.aspx" Width="216px" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="178px" 
                        ImageUrl="~/ac bus/ac bus 3.jpg" PostBackUrl="~/bus6.aspx" Width="242px" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:ImageButton ID="ImageButton7" runat="server" 
                        ImageUrl="~/ac bus/ac bus 4.gif" PostBackUrl="~/bus7.aspx" Width="246px" />
                </td>
                <td class="style4">
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="171px" 
                        ImageUrl="~/ac bus/ac bus 5.jpg" Width="215px" PostBackUrl="~/bus8.aspx" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton9" runat="server" 
                        ImageUrl="~/ac bus/ac bus 6.jpg" Width="240px" PostBackUrl="~/bus9.aspx" />
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

