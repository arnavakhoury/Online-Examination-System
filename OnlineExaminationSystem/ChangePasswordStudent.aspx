<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="ChangePasswordStudent.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 190px;
        }
        .style4
        {
            width: 215px;
            text-align: center;
            color: #000000;
        }
        .style5
        {
            width: 190px;
            text-align: right;
            color: #000000;
        }
        .style6
        {
            color: #FF6600;
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2">
        <tr>
            <td class="style6" colspan="3">
                <strong>Change Password</strong></td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblMessage" runat="server" style="font-weight: 700"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Current Password:</td>
            <td class="style4">
                <asp:TextBox ID="txtCurrentPassword" runat="server" Width="203px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtCurrentPassword" ErrorMessage="Current Password Required" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                New Password:</td>
            <td class="style4">
                <asp:TextBox ID="txtNewPassword" runat="server" Width="203px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtNewPassword" ErrorMessage="New Password Required" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Confirm New Password:</td>
            <td class="style4">
                <asp:TextBox ID="txtConfirmNewPassword" runat="server" Width="203px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtConfirmNewPassword" 
                    ErrorMessage="Confirm New Password Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmNewPassword" 
                    ErrorMessage="Password Must Maatch with New Password" style="color: #FF0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                    onclick="btnUpdate_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

