<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashborad.Master" AutoEventWireup="true" CodeBehind="AccManagement.aspx.cs" Inherits="DreamDrive.AccManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="productId" DataSourceID="SqlDataSource1" 
    ForeColor="#333333" GridLines="None" AllowSorting="True">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="productId" HeaderText="productId" ReadOnly="True" 
            SortExpression="productId" />
        <asp:BoundField DataField="productName" HeaderText="productName" 
            SortExpression="productName" />
        <asp:BoundField DataField="productcat" HeaderText="productcat" 
            SortExpression="productcat" />
        <asp:BoundField DataField="productqty" HeaderText="productqty" 
            SortExpression="productqty" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        <asp:BoundField DataField="productImage" HeaderText="productImage" 
            SortExpression="productImage" />
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
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:dreamConnectionString13 %>" 
    DeleteCommand="DELETE FROM [accessories] WHERE [productId] = @original_productId AND (([productName] = @original_productName) OR ([productName] IS NULL AND @original_productName IS NULL)) AND (([productcat] = @original_productcat) OR ([productcat] IS NULL AND @original_productcat IS NULL)) AND (([productqty] = @original_productqty) OR ([productqty] IS NULL AND @original_productqty IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([productImage] = @original_productImage) OR ([productImage] IS NULL AND @original_productImage IS NULL))" 
    InsertCommand="INSERT INTO [accessories] ([productId], [productName], [productcat], [productqty], [price], [productImage]) VALUES (@productId, @productName, @productcat, @productqty, @price, @productImage)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [accessories]" 
    UpdateCommand="UPDATE [accessories] SET [productName] = @productName, [productcat] = @productcat, [productqty] = @productqty, [price] = @price, [productImage] = @productImage WHERE [productId] = @original_productId AND (([productName] = @original_productName) OR ([productName] IS NULL AND @original_productName IS NULL)) AND (([productcat] = @original_productcat) OR ([productcat] IS NULL AND @original_productcat IS NULL)) AND (([productqty] = @original_productqty) OR ([productqty] IS NULL AND @original_productqty IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([productImage] = @original_productImage) OR ([productImage] IS NULL AND @original_productImage IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_productId" Type="Int32" />
        <asp:Parameter Name="original_productName" Type="String" />
        <asp:Parameter Name="original_productcat" Type="String" />
        <asp:Parameter Name="original_productqty" Type="String" />
        <asp:Parameter Name="original_price" Type="String" />
        <asp:Parameter Name="original_productImage" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="productId" Type="Int32" />
        <asp:Parameter Name="productName" Type="String" />
        <asp:Parameter Name="productcat" Type="String" />
        <asp:Parameter Name="productqty" Type="String" />
        <asp:Parameter Name="price" Type="String" />
        <asp:Parameter Name="productImage" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="productName" Type="String" />
        <asp:Parameter Name="productcat" Type="String" />
        <asp:Parameter Name="productqty" Type="String" />
        <asp:Parameter Name="price" Type="String" />
        <asp:Parameter Name="productImage" Type="String" />
        <asp:Parameter Name="original_productId" Type="Int32" />
        <asp:Parameter Name="original_productName" Type="String" />
        <asp:Parameter Name="original_productcat" Type="String" />
        <asp:Parameter Name="original_productqty" Type="String" />
        <asp:Parameter Name="original_price" Type="String" />
        <asp:Parameter Name="original_productImage" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
