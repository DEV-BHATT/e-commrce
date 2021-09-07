<%@ Page Title="" Language="C#" MasterPageFile="~/UserDashBoard.Master" AutoEventWireup="true" CodeBehind="OrderPlace.aspx.cs" Inherits="DreamDrive.OrderPlace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <table style="width: 26%; height: 71px">
            <tr>
                <td style="width: 133px">
                    Order Id:</td>
                <td style="width: 127px">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 30px; width: 133px">
                    Order Date</td>
                <td style="height: 30px; width: 127px">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" ForeColor="Black" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.NO." />
                <asp:BoundField DataField="ProductId" HeaderText="Product Id" />
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product Image">
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" 
                Height="50px" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <table style="width: 43%; height: 136px">
            <tr>
                <td style="height: 94px; width: 155px">
                    Your Address:</td>
                <td style="height: 94px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="90px" TextMode="MultiLine" 
                        Width="258px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 155px">
                    Mobile No.</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="257px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="background-color: #FF9900" Text="Order Place" />
        <br />
    </p>
    <p>
    </p>
</asp:Content>
