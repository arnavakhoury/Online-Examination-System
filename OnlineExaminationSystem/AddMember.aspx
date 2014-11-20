<%@ Page Title="Add Member" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddMember.aspx.cs" Inherits="AddMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 560px;
        }
        .style2
        {
            width: 224px;
        color: #000000;
        font-weight: 700;
    }
        .style3
        {
            width: 146px;
        }
        .style4
        {
            width: 224px;
            text-align: center;
        }
        .style5
        {
            font-size: large;
        }
        .style6
        {
            width: 146px;
            text-align: right;
        }
    .style7
    {
        width: 146px;
        text-align: right;
        font-weight: bold;
        color: #000000;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" class="style1">
        <tr>
            <td class="style5" colspan="3">
                <strong style="color: #FF6600">Member</strong></td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style2">
                <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Member ID:</td>
            <td class="style2">
                <asp:TextBox ID="txtMemberID" runat="server" Width="213px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Member ID Required" ControlToValidate="txtMemberID" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="txtMemberID" Display="Dynamic" 
                    ErrorMessage="Invalid Member ID" style="color: #FF0000" 
                    ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Username:</td>
            <td class="style2">
                <asp:TextBox ID="txtUsername" runat="server" Width="213px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Username Required" ControlToValidate="txtUsername" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Password:</td>
            <td class="style2">
                <asp:TextBox ID="txtPassword" runat="server" Width="213px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Password is Required" ControlToValidate="txtPassword" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Confirm Password:</td>
            <td class="style2">
                <asp:TextBox ID="txtConfirmPassword" runat="server" Width="213px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Confirm Password is Required" 
                    ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                    ErrorMessage="Both Password Must be Same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="btnCreateMember" runat="server" Text="Create Member" 
                    onclick="btnCreateMember_Click" />
&nbsp;<input id="Reset1" type="reset" value="Reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


