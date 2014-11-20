<%@ Page Title="Add Student" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: left;
            font-size: large;
            color: #FF6600;
            font-weight: 700;
        }
        .style3
        {
            width: 266px;
            font-weight: 700;
            color: #000000;
        }
        .style4
        {
            width: 114px;
            text-align: right;
            color: #000000;
        }
    .style5
    {
        text-align: left;
        font-size: 20px;
        color: #FF6600;
        font-weight: 700;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style5" colspan="3">
                Student</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Student ID:</td>
            <td class="style3">
                <asp:TextBox ID="txtStudentID" runat="server" Width="256px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtStudentID" ErrorMessage="Student ID Required" 
                    style="color: #FF0000" Display="Dynamic"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                    runat="server" ControlToValidate="txtStudentID" Display="Dynamic" 
                    ErrorMessage="Invalid Student ID" style="color: #FF0000" 
                    ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
       
        <tr>
            <td class="style4">
                Student Name:</td>
            <td class="style3">
                <asp:TextBox ID="txtStudentName" runat="server" Width="256px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtStudentName" ErrorMessage="First Name is Required" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Roll Number:</td>
            <td class="style3">
                <asp:TextBox ID="txtRollNumber" runat="server" Width="256px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtRollNumber" ErrorMessage="Roll Number Required" 
                    style="color: #FF0000" Display="Dynamic"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="txtRollNumber" Display="Dynamic" 
                    ErrorMessage="Invalid Roll Number" style="color: #FF0000" 
                    ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Faculty:</td>
            <td class="style3">
                <asp:DropDownList ID="ddlFaculty" runat="server" Height="22px" Width="259px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="ddlFaculty" ErrorMessage="Select Faculty" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Semester:</td>
            <td class="style3">
                <asp:DropDownList ID="ddlSemester" runat="server" Height="22px" Width="241px">
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
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style4">
                Email:</td>
            <td class="style3">
                <asp:TextBox ID="txtEmail" runat="server" Width="256px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email Required" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Invalid Email Address" 
                    style="color: #FF0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style4">
                Student
                Photo:</td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="Choose Photo" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="btnCreateStudent" runat="server" Text="Create Student" 
                    onclick="btnCreateStudent_Click" />
&nbsp;<input id="Reset1" type="reset" value="Reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

