<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 183px;
        }
        .style4
        {
            width: 183px;
            height: 34px;
        }
        .style5
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 193px">
        <br />
        <table style="width: 99%; height: 310px;">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Enter The Bus No"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="156px">
                        <asp:ListItem>Zgjedhni numrin e autobusit</asp:ListItem>
                        <asp:ListItem>KL 13 Z 5656</asp:ListItem>
                        <asp:ListItem>KL 59 G 0001</asp:ListItem>
                        <asp:ListItem>KL 59 F 1010</asp:ListItem>
                        <asp:ListItem>KL 13 Z 1022</asp:ListItem>
                        <asp:ListItem>KL 13 Z 1919</asp:ListItem>
                        <asp:ListItem>KL 13 Z 1616</asp:ListItem>
                        <asp:ListItem>KL 59 F 8888</asp:ListItem>
                        <asp:ListItem>KL 59 E 6767</asp:ListItem>
                        <asp:ListItem>KL 02 AB 7777</asp:ListItem>
                        <asp:ListItem>KL 02 AB 007</asp:ListItem>
                        <asp:ListItem>KL 13 Z 2013</asp:ListItem>
                        <asp:ListItem>KL 59 F 1212</asp:ListItem>
                        <asp:ListItem>KL 02 AC 1602</asp:ListItem>
                        <asp:ListItem>KL 13 W 7076</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="nuk eshte e domosdoshme"></asp:RequiredFieldValidator>
                &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="157px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="emri kerkohet"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Data e fillimit"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="156px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Kontrollo a eshte ne dispozicion" 
                        Width="227px" CausesValidation="False" onclick="Button1_Click" />
                &nbsp;
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Data e mbarimit"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="154px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Ditet kerkohen"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label6" runat="server" Text="Vendi"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBox5" runat="server" Width="155px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Vendi kerkohet"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Pozita e nisjes"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="154px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Pozita kerkohet"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label7" runat="server" Text="Ora"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="155px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Ora kerkohet"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label8" runat="server" Text="Paradhenia"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="155px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Paradhenia"></asp:RequiredFieldValidator>
                &nbsp;
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox8" 
                        ErrorMessage="Paradhenia duhet te jete mes 1000 dhe 5000" 
                        MaximumValue="5000" MinimumValue="1000"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        style="margin-left: 231px" Text="Konfirmo" Width="201px" />
                <asp:Label ID="Label9" runat="server"></asp:Label>
    </p>
    <p>
    </p>
</asp:Content>

