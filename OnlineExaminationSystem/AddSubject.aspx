<%@ Page Title="Add Subject" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" Inherits="AddSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            font-size: large;
            color: #FF6600;
        }
        .style4
        {
            width: 138px;
            text-align: right;
            color: #000000;
        }
        .style5
        {
            width: 263px;
            color: #000000;
            font-weight: 700;
        }
        .style6
        {
            width: 138px;
            text-align: right;
            color: #000000;
        }
        .style7
        {
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table align="center" class="style2">
        <tr>
            <td class="style3" colspan="3" valign="top">
                <strong>
&nbsp;<span class="style7">Subject</span></strong></td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Subject ID:</td>
            <td class="style5">
                <asp:TextBox ID="txtSubjectID" runat="server" Width="241px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtSubjectID" ErrorMessage="Subject Code Required" 
                    style="color: #FF0000" Display="Dynamic"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="txtSubjectID" Display="Dynamic" 
                    ErrorMessage="Invalid Subject ID" style="color: #FF0000" 
                    ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Subject Name:</td>
            <td class="style5">
                <asp:TextBox ID="txtSubject" runat="server" Width="241px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtSubject" ErrorMessage="Subject Name Required" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Faculty:</td>
            <td class="style5">
                <asp:DropDownList ID="ddlFaculty" runat="server" Height="22px" Width="241px" 
                    onselectedindexchanged="ddlFaculty_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ddlFaculty" ErrorMessage="Faculty Required" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Semester:</td>
            <td class="style5">
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="ddlSemester" ErrorMessage="Semester Required" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" valign="top">
                Description</td>
            <td class="style5">
                <asp:TextBox ID="txtDescription" runat="server" Width="241px" Height="88px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="btnAddSubject" runat="server" Text="Add Subject" 
                    onclick="btnAddSubject_Click" />
&nbsp;<input id="Reset1" type="reset" value="Reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

