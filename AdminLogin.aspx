<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="DreamDrive.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Admin Login"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Admin Name"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
        Width="148px" class="nl"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" 
        Width="144px" TextMode="Password" class="nl"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login"  class="nl"/>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>
    </p>
</asp:Content>
