<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashborad.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="DreamDrive.UserManagement" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        DataKeyNames="uid" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="uid" HeaderText="uid" InsertVisible="False" 
                ReadOnly="True" SortExpression="uid" />
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
            <asp:BoundField DataField="Addrss" HeaderText="Addrss" 
                SortExpression="Addrss" />
            <asp:BoundField DataField="pin" HeaderText="pin" SortExpression="pin" />
            <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
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
    ConnectionString="<%$ ConnectionStrings:dreamConnectionString7 %>" 
    DeleteCommand="DELETE FROM [REG] WHERE [uid] = @original_uid AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Dob] = @original_Dob) OR ([Dob] IS NULL AND @original_Dob IS NULL)) AND (([Addrss] = @original_Addrss) OR ([Addrss] IS NULL AND @original_Addrss IS NULL)) AND (([pin] = @original_pin) OR ([pin] IS NULL AND @original_pin IS NULL)) AND (([Pass] = @original_Pass) OR ([Pass] IS NULL AND @original_Pass IS NULL))" 
    InsertCommand="INSERT INTO [REG] ([Fname], [Lname], [Email], [Dob], [Addrss], [pin], [Pass]) VALUES (@Fname, @Lname, @Email, @Dob, @Addrss, @pin, @Pass)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [REG]" 
    UpdateCommand="UPDATE [REG] SET [Fname] = @Fname, [Lname] = @Lname, [Email] = @Email, [Dob] = @Dob, [Addrss] = @Addrss, [pin] = @pin, [Pass] = @Pass WHERE [uid] = @original_uid AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Dob] = @original_Dob) OR ([Dob] IS NULL AND @original_Dob IS NULL)) AND (([Addrss] = @original_Addrss) OR ([Addrss] IS NULL AND @original_Addrss IS NULL)) AND (([pin] = @original_pin) OR ([pin] IS NULL AND @original_pin IS NULL)) AND (([Pass] = @original_Pass) OR ([Pass] IS NULL AND @original_Pass IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_uid" Type="Int32" />
            <asp:Parameter Name="original_Fname" Type="String" />
            <asp:Parameter Name="original_Lname" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Dob" Type="String" />
            <asp:Parameter Name="original_Addrss" Type="String" />
            <asp:Parameter Name="original_pin" Type="String" />
            <asp:Parameter Name="original_Pass" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Dob" Type="String" />
            <asp:Parameter Name="Addrss" Type="String" />
            <asp:Parameter Name="pin" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Dob" Type="String" />
            <asp:Parameter Name="Addrss" Type="String" />
            <asp:Parameter Name="pin" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
            <asp:Parameter Name="original_uid" Type="Int32" />
            <asp:Parameter Name="original_Fname" Type="String" />
            <asp:Parameter Name="original_Lname" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Dob" Type="String" />
            <asp:Parameter Name="original_Addrss" Type="String" />
            <asp:Parameter Name="original_pin" Type="String" />
            <asp:Parameter Name="original_Pass" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:dreamConnectionString2 %>" 
        DeleteCommand="DELETE FROM [REG] WHERE [uid] = @original_uid AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Dob] = @original_Dob) OR ([Dob] IS NULL AND @original_Dob IS NULL)) AND (([Addrss] = @original_Addrss) OR ([Addrss] IS NULL AND @original_Addrss IS NULL)) AND (([pin] = @original_pin) OR ([pin] IS NULL AND @original_pin IS NULL)) AND (([Pass] = @original_Pass) OR ([Pass] IS NULL AND @original_Pass IS NULL))" 
        InsertCommand="INSERT INTO [REG] ([Fname], [Lname], [Email], [Dob], [Addrss], [pin], [Pass]) VALUES (@Fname, @Lname, @Email, @Dob, @Addrss, @pin, @Pass)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [uid], [Fname], [Lname], [Email], [Dob], [Addrss], [pin], [Pass] FROM [REG]" 
        UpdateCommand="UPDATE [REG] SET [Fname] = @Fname, [Lname] = @Lname, [Email] = @Email, [Dob] = @Dob, [Addrss] = @Addrss, [pin] = @pin, [Pass] = @Pass WHERE [uid] = @original_uid AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Dob] = @original_Dob) OR ([Dob] IS NULL AND @original_Dob IS NULL)) AND (([Addrss] = @original_Addrss) OR ([Addrss] IS NULL AND @original_Addrss IS NULL)) AND (([pin] = @original_pin) OR ([pin] IS NULL AND @original_pin IS NULL)) AND (([Pass] = @original_Pass) OR ([Pass] IS NULL AND @original_Pass IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_uid" Type="Int32" />
            <asp:Parameter Name="original_Fname" Type="String" />
            <asp:Parameter Name="original_Lname" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Dob" Type="String" />
            <asp:Parameter Name="original_Addrss" Type="String" />
            <asp:Parameter Name="original_pin" Type="String" />
            <asp:Parameter Name="original_Pass" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Dob" Type="String" />
            <asp:Parameter Name="Addrss" Type="String" />
            <asp:Parameter Name="pin" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Dob" Type="String" />
            <asp:Parameter Name="Addrss" Type="String" />
            <asp:Parameter Name="pin" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
            <asp:Parameter Name="original_uid" Type="Int32" />
            <asp:Parameter Name="original_Fname" Type="String" />
            <asp:Parameter Name="original_Lname" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Dob" Type="String" />
            <asp:Parameter Name="original_Addrss" Type="String" />
            <asp:Parameter Name="original_pin" Type="String" />
            <asp:Parameter Name="original_Pass" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

