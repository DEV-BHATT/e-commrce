<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashborad.Master" AutoEventWireup="true" CodeBehind="QueryManagement.aspx.cs" Inherits="DreamDrive.QueryManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="Qid" DataSourceID="SqlDataSource2" 
    Width="932px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="225px" 
    AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Qid" HeaderText="Qid" InsertVisible="False" 
            ReadOnly="True" SortExpression="Qid" />
        <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Query" HeaderText="Query" SortExpression="Query" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        <asp:BoundField DataField="Req" HeaderText="Req" SortExpression="Req" />
    </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:dreamConnectionString6 %>" 
    DeleteCommand="DELETE FROM [Query] WHERE [Qid] = @original_Qid AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Query] = @original_Query) OR ([Query] IS NULL AND @original_Query IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Req] = @original_Req) OR ([Req] IS NULL AND @original_Req IS NULL))" 
    InsertCommand="INSERT INTO [Query] ([Fname], [Lname], [Email], [Query], [Phone], [Req]) VALUES (@Fname, @Lname, @Email, @Query, @Phone, @Req)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [Query]" 
    UpdateCommand="UPDATE [Query] SET [Fname] = @Fname, [Lname] = @Lname, [Email] = @Email, [Query] = @Query, [Phone] = @Phone, [Req] = @Req WHERE [Qid] = @original_Qid AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Query] = @original_Query) OR ([Query] IS NULL AND @original_Query IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Req] = @original_Req) OR ([Req] IS NULL AND @original_Req IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Qid" Type="Int32" />
        <asp:Parameter Name="original_Fname" Type="String" />
        <asp:Parameter Name="original_Lname" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Query" Type="String" />
        <asp:Parameter Name="original_Phone" Type="String" />
        <asp:Parameter Name="original_Req" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Query" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Req" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Query" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Req" Type="String" />
        <asp:Parameter Name="original_Qid" Type="Int32" />
        <asp:Parameter Name="original_Fname" Type="String" />
        <asp:Parameter Name="original_Lname" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Query" Type="String" />
        <asp:Parameter Name="original_Phone" Type="String" />
        <asp:Parameter Name="original_Req" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:dreamConnectionString4 %>" 
    DeleteCommand="DELETE FROM [Query] WHERE [Qid] = @original_Qid AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Query] = @original_Query) OR ([Query] IS NULL AND @original_Query IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Req] = @original_Req) OR ([Req] IS NULL AND @original_Req IS NULL))" 
    InsertCommand="INSERT INTO [Query] ([Fname], [Lname], [Email], [Query], [Phone], [Req]) VALUES (@Fname, @Lname, @Email, @Query, @Phone, @Req)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [Query]" 
    UpdateCommand="UPDATE [Query] SET [Fname] = @Fname, [Lname] = @Lname, [Email] = @Email, [Query] = @Query, [Phone] = @Phone, [Req] = @Req WHERE [Qid] = @original_Qid AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Query] = @original_Query) OR ([Query] IS NULL AND @original_Query IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Req] = @original_Req) OR ([Req] IS NULL AND @original_Req IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Qid" Type="Int32" />
        <asp:Parameter Name="original_Fname" Type="String" />
        <asp:Parameter Name="original_Lname" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Query" Type="String" />
        <asp:Parameter Name="original_Phone" Type="String" />
        <asp:Parameter Name="original_Req" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Query" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Req" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Query" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Req" Type="String" />
        <asp:Parameter Name="original_Qid" Type="Int32" />
        <asp:Parameter Name="original_Fname" Type="String" />
        <asp:Parameter Name="original_Lname" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_Query" Type="String" />
        <asp:Parameter Name="original_Phone" Type="String" />
        <asp:Parameter Name="original_Req" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
