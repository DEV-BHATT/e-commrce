<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DreamDrive.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" ForeColor="Black" 
        Text="Sign Up " Font-Bold="True" Font-Italic="True" 
        Font-Size="X-Large" BackColor="#FFCCFF" Font-Underline="True"></asp:Label>
    <br />
    <br />
    <br />
&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Lime" 
        Text="Please Complete Your Detalis" Font-Size="Small"></asp:Label>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" ForeColor="Lime" Text="User Id" 
        Font-Bold="True"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="572px" BorderColor="#660066" 
        BorderStyle="Outset"  class="ne" Height="26px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" ForeColor="Lime" Text="Frist Name" 
        Font-Bold="True"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Width="225px" BorderStyle="Solid" 
        class="ne" Height="26px"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" ForeColor="Lime" Text="Last Name" 
        Font-Bold="True"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="203px" BorderStyle="Double" 
        class="ne" Height="26px"></asp:TextBox>
    <br />
    &nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" ForeColor="Lime" Text="Email " 
        Font-Bold="True"></asp:Label>
&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox3" runat="server" 
        Width="569px" BorderStyle="Double" class="ne" Height="25px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label11" runat="server" ForeColor="Lime" Text="Date" 
        Font-Bold="True"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox7" runat="server" Width="225px" 
        ontextchanged="TextBox7_TextChanged" BorderStyle="Double" class="ne" 
        Height="26px"></asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/image/cen1.jpg" onclick="ImageButton1_Click" 
        style="margin-left: 0px; margin-right: 1px;" ForeColor="Lime" 
        Height="37px" Width="36px" />
    <asp:Calendar ID="Calendar1" runat="server" BorderColor="#FFCC66" 
        ForeColor="#663399" BackColor="#FFFFCC" BorderWidth="1px" 
        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" Height="200px" 
        onselectionchanged="Calendar1_SelectionChanged" ShowGridLines="True" 
        Width="220px" Visible="false">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
            ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" ForeColor="Lime" Text="Address" 
        Font-Bold="True"></asp:Label>
&nbsp;&nbsp; 
    <asp:TextBox ID="TextBox4" runat="server" Width="599px" 
        BorderStyle="Double" class="ne" Height="26px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" ForeColor="Lime" Text="Pin code" 
        Font-Bold="True"></asp:Label>
&nbsp; 
    <asp:TextBox ID="TextBox5" runat="server" Width="599px" BorderStyle="Double" 
        class="ne" Height="26px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" ForeColor="Lime" Text="Password" 
        Font-Bold="True"></asp:Label>
    &nbsp; 
    <asp:TextBox ID="TextBox8" runat="server" Width="599px" 
        BorderStyle="Double" class="ne" Height="26px"></asp:TextBox>
    <br />
    <br />&nbsp;<br />
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Get Started" Width="358px" class="nice" 
        onclick="Button1_Click" Font-Bold="True" BorderColor="Lime" 
        BackColor="#003300" ForeColor="#990099" Height="46px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
        ID="LinkButton1" runat="server">Already Registered?</asp:LinkButton>
&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
</asp:Content>
