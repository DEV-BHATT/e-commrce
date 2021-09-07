<%@ Page Title="" Language="C#" MasterPageFile="~/UserDashBoard.Master" AutoEventWireup="true" CodeBehind="UserAddCard.aspx.cs" Inherits="DreamDrive.UserAddCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        You have
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        .Number
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="productId" 
            DataSourceID="SqlDataSource1" 
            RepeatColumns="4" 
            RepeatDirection="Horizontal" style="margin-right: 8px" 
            onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table style="width: 100%; height: 313px" bgcolor="Aqua">
                    <tr>
                        <td style="height: 71px; text-align: center;">
                            Product Id:<asp:Label ID="Label2" runat="server" 
                                Text='<%# Eval("productId") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 46px; text-align: center;">
                            Product Name:<asp:Label ID="Label3" runat="server" 
                                Text='<%# Eval("productName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 194px; text-align: center;">
                            Product Image:<asp:Image ID="Image1" runat="server" Height="200px" 
                                ImageUrl='<%# Eval("productImage") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 56px; text-align: center;">
                            Product Category:<asp:Label ID="Label4" runat="server" 
                                Text='<%# Eval("productcat") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 52px; text-align: center;">
                            Product Qty:<asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 49px; text-align: center;">
                            Product Price:<asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center; height: 49px;">
                            <asp:Button ID="Button1" runat="server" Text="Add to Card" Width="107px" 
                                CommandArgument='<%# Eval("productId") %>' BackColor="#660066" 
                                CommandName="addtocart" ForeColor="White"
                               />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dreamConnectionString5 %>" 
            SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
