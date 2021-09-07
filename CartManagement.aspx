<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashborad.Master" AutoEventWireup="true" CodeBehind="CartManagement.aspx.cs" Inherits="DreamDrive.CartManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
    AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
    ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" />
        <asp:BoundField DataField="productid" HeaderText="productid" 
            SortExpression="productid" />
        <asp:BoundField DataField="productname" HeaderText="productname" 
            SortExpression="productname" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        <asp:BoundField DataField="productqty" HeaderText="productqty" 
            SortExpression="productqty" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:dreamConnectionString14 %>" 
    SelectCommand="SELECT * FROM [cardDetails]"></asp:SqlDataSource>
</asp:Content>
