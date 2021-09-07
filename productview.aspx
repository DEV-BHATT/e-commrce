<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashborad.Master" AutoEventWireup="true" CodeBehind="productview.aspx.cs" Inherits="DreamDrive.productview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
&nbsp;<asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/image/car1.jpg" 
            Width="200px" />
        <asp:Image ID="Image2" runat="server" Height="200px" 
            ImageUrl="~/image/car3.jpg" Width="200px" />
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Product Id:"></asp:Label>
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="01" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Product Id"></asp:Label>
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="02" />
    </p>
    <p>
&nbsp;
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
