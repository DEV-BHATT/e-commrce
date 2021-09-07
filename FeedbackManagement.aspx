<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashborad.Master" AutoEventWireup="true" CodeBehind="FeedbackManagement.aspx.cs" Inherits="DreamDrive.FeedbackManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="uid" 
    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" 
            SortExpression="uid" />
        <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Feed" HeaderText="Feed" SortExpression="Feed" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
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
    ConnectionString="<%$ ConnectionStrings:dreamConnectionString12 %>" 
    DeleteCommand="DELETE FROM [Feed] WHERE [uid] = @original_uid AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Feed] = @original_Feed) OR ([Feed] IS NULL AND @original_Feed IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL))" 
    InsertCommand="INSERT INTO [Feed] ([uid], [Fname], [Lname], [Email], [Feed], [Phone]) VALUES (@uid, @Fname, @Lname, @Email, @Feed, @Phone)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [Feed]" 
    UpdateCommand="UPDATE [Feed] SET [Fname] = @Fname, [Lname] = @Lname, [Email] = @Email, [Feed] = @Feed, [Phone] = @Phone WHERE [uid] = @original_uid AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Feed] = @original_Feed) OR ([Feed] IS NULL AND @original_Feed IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_uid" Type="String" />
        <asp:Parameter Name="original_Fname" Type="String" />
        <asp:Parameter Name="original_Lname" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Feed" Type="String" />
        <asp:Parameter Name="original_Phone" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="uid" Type="String" />
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Feed" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Feed" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="original_uid" Type="String" />
        <asp:Parameter Name="original_Fname" Type="String" />
        <asp:Parameter Name="original_Lname" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Feed" Type="String" />
        <asp:Parameter Name="original_Phone" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
