<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Shfrytezuesit.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="username" DataSourceID="Shfrytezuesit" ForeColor="Black" GridLines="None" style="margin-top: 31px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
            <asp:BoundField DataField="emri" HeaderText="emri" SortExpression="emri" />
            <asp:BoundField DataField="mbiemri" HeaderText="mbiemri" SortExpression="mbiemri" />
            <asp:BoundField DataField="datelindja" HeaderText="datelindja" SortExpression="datelindja" />
            <asp:BoundField DataField="gjinia" HeaderText="gjinia" SortExpression="gjinia" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="Shfrytezuesit" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        SelectCommand="SELECT [username], [emri], [mbiemri], [datelindja], [gjinia], [email] FROM [tbl_kyqja]"
        UpdateCommand="Update tbl_kyqja SET emri = @emri, mbiemri = @mbiemri , 
            datelindja = @datelindja ,gjinia=@gjinia ,email=@email
                WHERE username = @username "
            DeleteCommand="DELETE FROM [tbl_kyqja] WHERE username=@username;">
           
            <UpdateParameters>
                            <asp:Parameter Name="username" />
                            <asp:Parameter Name="emri"  />
                            <asp:Parameter Name="mbiemri"  />
                            <asp:Parameter Name="datelindja" />
                <asp:Parameter Name="email" />
                <asp:Parameter Name="gjinia" />
                
               </UpdateParameters>
    </asp:SqlDataSource>
    <p>
    </p>
</asp:Content>

