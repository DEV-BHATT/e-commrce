<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashborad.Master" AutoEventWireup="true" CodeBehind="ContactManagement.aspx.cs" Inherits="DreamDrive.ContactManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="conid" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="conid" HeaderText="conid" InsertVisible="False" 
                ReadOnly="True" SortExpression="conid" />
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="reson" HeaderText="reson" SortExpression="reson" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Req" HeaderText="Req" SortExpression="Req" />
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
        ConnectionString="<%$ ConnectionStrings:dreamConnectionString15 %>" 
        DeleteCommand="DELETE FROM [contactus] WHERE [conid] = @original_conid AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([reson] = @original_reson) OR ([reson] IS NULL AND @original_reson IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Req] = @original_Req) OR ([Req] IS NULL AND @original_Req IS NULL))" 
        InsertCommand="INSERT INTO [contactus] ([Fname], [Lname], [Email], [reson], [Phone], [Req]) VALUES (@Fname, @Lname, @Email, @reson, @Phone, @Req)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [contactus]" 
        UpdateCommand="UPDATE [contactus] SET [Fname] = @Fname, [Lname] = @Lname, [Email] = @Email, [reson] = @reson, [Phone] = @Phone, [Req] = @Req WHERE [conid] = @original_conid AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([reson] = @original_reson) OR ([reson] IS NULL AND @original_reson IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Req] = @original_Req) OR ([Req] IS NULL AND @original_Req IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_conid" Type="Int32" />
            <asp:Parameter Name="original_Fname" Type="String" />
            <asp:Parameter Name="original_Lname" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_reson" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Req" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="reson" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Req" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="reson" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Req" Type="String" />
            <asp:Parameter Name="original_conid" Type="Int32" />
            <asp:Parameter Name="original_Fname" Type="String" />
            <asp:Parameter Name="original_Lname" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_reson" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Req" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
