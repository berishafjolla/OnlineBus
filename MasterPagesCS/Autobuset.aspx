<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Autobuset.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" datakeynames="busno" OnRowDeleting="GridView1_RowDeleting1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2"
        >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="busno" HeaderText="busno" SortExpression="busno" />
            <asp:BoundField DataField="noseats" HeaderText="uleset" SortExpression="noseats" />
            
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <img alt="" src="ShowImage.ashx?busno=<%# Eval("Busno").ToString() %>" width="150" height="100"" />
            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rezervimiConnectionString %>" 
        SelectCommand="SELECT * FROM [bus]" DeleteCommand="DELETE FROM [bus] WHERE busno=@busno;" >
        
                            
              
    </asp:SqlDataSource>
    </asp:Content>

