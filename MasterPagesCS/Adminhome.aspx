<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Adminhome.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 858px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style5">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/bys.jpeg" 
                    Width="714px" />
            </td>
            <td>
                <ol>
                    <li>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Shto autobus" 
                            Width="112px" />
                    </li>
                    <li>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="Shiko rezervimet" Width="113px" />
                        
                    </li>
                    <li><asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Shfrytezuesit" />
                        </li>
                    <li>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Autobuset" /></li>
                </ol>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

