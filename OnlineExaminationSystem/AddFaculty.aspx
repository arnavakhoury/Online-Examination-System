<%@ Page Title="Add Faculty" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddFaculty.aspx.cs" Inherits="AddFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 214px;
        }
        .style4
        {
            width: 214px;
            text-align: right;
            color: #000000;
        }
        .style5
        {
            width: 242px;
            font-weight: 700;
            color: #000000;
        }
        .style6
        {
            font-size: 20px;
            color: #FF6600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2">
        <tr>
            <td colspan="3" class="style6">
                <strong>Faculty</strong></td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Faculty ID:</td>
            <td class="style5">
                <asp:TextBox ID="txtFacultyID" runat="server" Width="229px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Faculty ID is required" style="color: #FF0000" 
                    ControlToValidate="txtFacultyID" Display="Dynamic"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="txtFacultyID" Display="Dynamic" 
                    ErrorMessage="Invalid Faculty ID" style="color: #FF0000" 
                    ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Faculty</td>
            <td class="style5">
                <asp:TextBox ID="txtFaculty" runat="server" Width="229px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Faculty Name is Required" style="color: #FF0000" 
                    ControlToValidate="txtFaculty"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Duration</td>
            <td class="style5">
                <asp:DropDownList ID="ddlDuration" runat="server" Height="22px" Width="229px">
                    <asp:ListItem>1 Year</asp:ListItem>
                    <asp:ListItem>2 Years</asp:ListItem>
                    <asp:ListItem>3 Years</asp:ListItem>
                    <asp:ListItem>4 Years</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Duration is Required" style="color: #FF0000" 
                    ControlToValidate="ddlDuration"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Fee</td>
            <td class="style5">
                <asp:TextBox ID="txtFee" runat="server" Width="229px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Fee is Required" style="color: #FF0000" 
                    ControlToValidate="txtFee" Display="Dynamic"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="txtFee" Display="Dynamic" 
                    ErrorMessage="Invalid Fee Format" style="color: #FF0000" 
                    ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="btnAddFaculty" runat="server" Text="Add Faculty" 
                    onclick="btnAddFaculty_Click" />
&nbsp;<input id="Reset1" type="reset" value="Reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

