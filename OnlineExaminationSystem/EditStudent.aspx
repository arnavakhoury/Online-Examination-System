<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditStudent.aspx.cs" Inherits="EditManageStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-align: left;
            color: #000000;
            width: 143px;
        }
        .style6
        {
            text-align: center;
            color: #000000;
            width: 143px;
        }
    .style7
    {
        text-align: left;
        color: #FF6600;
        font-size: x-large;
    }
    .style8
    {
            text-align: right;
            color: #000000;
            width: 143px;
        }
        .style10
        {
            width: 391px;
            text-align: left;
        }
        .style11
        {
            text-align: left;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" style="height: 241px; width: 568px">
                   
        <tr>
            <td class="style7" colspan="3">
                <strong>Edit Student</strong></td>
           
        </tr>
                   
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style11" colspan="2">
                <asp:Label ID="lblMessage" runat="server" 
                    style="text-align: center; font-weight: 700"></asp:Label>
            </td>
        </tr>
                   
        <tr>
            <td class="style8">
                Student ID:</td>
            <td class="style11" colspan="2">
                <asp:TextBox ID="txtStudentID" runat="server" Width="175px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                    runat="server" ControlToValidate="txtStudentID" Display="Dynamic" 
                    ErrorMessage="Invalid Student ID" style="color: #FF0000" 
                    ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                &nbsp;<asp:Button ID="btnSearchById" runat="server" Text="Search" 
                    onclick="btnSearchById_Click" style="height: 26px" />
            </td>
        </tr>
                   
        <tr>
            <td class="style8">
                Student Name:</td>
            <td class="style11" colspan="2">
                <asp:TextBox ID="txtStudentName" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Roll Number:</td>
            <td class="style11" colspan="2">
                <asp:TextBox ID="txtRollNumber" runat="server" Width="175px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="txtRollNumber" Display="Dynamic" 
                    ErrorMessage="Invalid Roll Number" style="color: #FF0000" 
                    ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
            &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style8">
                Username:</td>
            <td class="style11" colspan="2">
                <asp:TextBox ID="txtUsername" runat="server" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Faculty:</td>
            <td class="style11" colspan="2">
                <asp:DropDownList ID="ddlFaculty" runat="server" Height="22px" Width="175px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Semester:</td>
            <td class="style11" colspan="2">
                <asp:DropDownList ID="ddlSemester" runat="server" Height="22px" Width="175px">
                    <asp:ListItem>1st Semester</asp:ListItem>
                    <asp:ListItem>2nd Semester</asp:ListItem>
                    <asp:ListItem>3rd Semester</asp:ListItem>
                    <asp:ListItem>4th Semester</asp:ListItem>
                    <asp:ListItem>5th Semester</asp:ListItem>
                    <asp:ListItem>6th Semester</asp:ListItem>
                    <asp:ListItem>7th Semester</asp:ListItem>
                    <asp:ListItem>8th Semester</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        
        <tr>
            <td class="style8">
                Email:</td>
            <td class="style11" colspan="2">
                <asp:TextBox ID="txtEmail" runat="server" Width="175px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Invalid Email Address" 
                    style="color: #FF0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            &nbsp;</td>
            
        </tr>
        
        <tr>
            <td class="style8">
                Student Picture</td>
            <td class="style11" colspan="2">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;<asp:Button ID="btnChangePicture" runat="server" 
                    onclick="btnChangePicture_Click" Text="Update Picture" />
            </td>
            
        </tr>
        
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style11" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    HeaderText="Please Fix the Following Errors:" style="color: #FF0000" />
            </td>
            
        </tr>
        
        <tr>
           
            <td class="style6">
                &nbsp;
                </td>
            <td class="style10">
                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                    onclick="btnUpdate_Click" />
                <span onclick="return confirm('Are you sure you want to Delete the Record?')">
                <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                    onclick="btnDelete_Click" />
                </span>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

