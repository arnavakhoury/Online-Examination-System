<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/LoginPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 421px;
            height: 79px;
        }
        .style2
        {
            width: 148px;
            background-color: #FFFFCC;
        }
        .style3
        {
            text-align: center;
            font-size: large;
            font-family: "Comic Sans MS";
            background-color: #99CC99;
        }
        .style4
        {
            width: 148px;
            text-align: right;
            font-family: "Comic Sans MS";
            font-weight: bold;
            color: #000000;
            background-color: #FFFFCC;
        }
        .style5
        {
            background-color: #FFFFCC;
            color: #FF0000;
        }
        .style6
        {
            background-color: #99CC99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style3" colspan="2">
                <strong style="color: #000000; text-align: center"><span class="style6">Admin 
                Login</span></strong></td>
        </tr>
        <tr>
            <td class="style4">
                Username:</td>
            <td class="style5">
                <asp:TextBox ID="txtUsername" runat="server" Width="179px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Password:</td>
            <td class="style5">
                <asp:TextBox ID="txtPassword" runat="server" Width="179px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5" style="text-align: center">
                <asp:Button ID="btnLogin" runat="server" BackColor="#3E8F14" ForeColor="White" 
                    Text="Login" onclick="btnLogin_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

