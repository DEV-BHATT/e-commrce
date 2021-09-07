<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Query.aspx.cs" Inherits="DreamDrive.Query" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#CC9900" Text="Query Form"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" ForeColor="#0066FF" 
            Text="Please Enter Your Detalis"></asp:Label>
&nbsp;</p>
    <p>
        <asp:Label ID="Label11" runat="server" ForeColor="#0000CC" Text="Query Id"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" Width="451px"></asp:TextBox>
        &nbsp;
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" ForeColor="#0000CC" Text="Frist Name"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="171px"></asp:TextBox>
&nbsp;<asp:Label ID="Label6" runat="server" ForeColor="#0000CC" Text="Last Name"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" 
            Width="164px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" ForeColor="#0000CC" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="397px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label10" runat="server" ForeColor="#0000CC" Text="Query"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Width="488px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" ForeColor="#0000CC" Text="PhoneNo"></asp:Label>
&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" Width="500px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label9" runat="server" ForeColor="#0000CC" Text="Request"></asp:Label>
&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server" Width="501px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" ForeColor="#333300" 
            onclick="Button1_Click" Text="Query" Width="504px" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
   
   
</asp:Content>
