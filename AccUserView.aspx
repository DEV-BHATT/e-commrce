<%@ Page Title="" Language="C#" MasterPageFile="~/UserDashBoard.Master" AutoEventWireup="true" CodeBehind="AccUserView.aspx.cs" Inherits="DreamDrive.AccUserView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
    You have products
    <asp:Label ID="Label1" runat="server"></asp:Label>
    in Cart.<asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/AccCart.aspx">Cart</asp:HyperLink>
</p>
<p>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="productId" 
        DataSourceID="SqlDataSource1" onitemcommand="DataList1_ItemCommand" 
        RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            <table border="1" style="width: 100%; background-color: #669999">
                <tr>
                    <td style="height: 34px; text-align: center">
                        ID:<asp:Label ID="Label2" runat="server" Text='<%# Eval("productId") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 37px; text-align: center">
                        NAME:<asp:Label ID="Label3" runat="server" Text='<%# Eval("productName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 200px; text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="200px" 
                            ImageUrl='<%# Eval("productImage") %>' Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td style="height: 38px; text-align: center">
                        CATEGORY:<asp:Label ID="Label4" runat="server" Text='<%# Eval("productcat") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 36px; text-align: center">
                        QUANTITY:<asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="height: 33px; text-align: center">
                        PRICE:Rs.<asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 38px; text-align: center">
                        <asp:Button ID="Button1" runat="server" 
                            CommandArgument='<%#Eval("productId")%>' CommandName="addtocart" 
                            style="background-color: #FFFF00" Text="ADD TO CART" />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dreamConnectionString11 %>" 
        SelectCommand="SELECT * FROM [accessories]"></asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
</asp:Content>
