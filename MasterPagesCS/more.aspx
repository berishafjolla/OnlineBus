<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="more.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <br />
    <asp:GridView ID="GridView1" runat="server" OnRowCommand="Gridview1_Rowcommand">
        <Columns>
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <img alt="" src="ShowImage.ashx?busno=<%# Eval("Busno").ToString() %>" width="150" height="100"" />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField ButtonType="Button" CommandName="Cancel" Text="Rezervo" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
   
   <div align="center"> 
    
    
    

</div>
</asp:Content>

