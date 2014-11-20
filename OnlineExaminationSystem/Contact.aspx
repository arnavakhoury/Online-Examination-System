<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <div style="font-family:Arial;width:400px;margin:0 auto;">
        <fieldset style="width:350px">
            <legend>Contact Us</legend>
            
            <table align="center" class="style1">
                <tr>
                    <td class="style2">
                        Name:</td>
                    <td class="style3">
                        <asp:TextBox ID="txtName" runat="server" CssClass="style7" Width="199px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtName" CssClass="style4" ErrorMessage="Name is Required">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Email:</td>
                    <td class="style3">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="style7" Width="199px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtEmail" CssClass="style4" Display="Dynamic" 
                            ErrorMessage="Email is Required">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtEmail" Display="Dynamic" 
                            ErrorMessage="Please Enter Valid Email" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Subject:</td>
                    <td class="style3">
                        <asp:TextBox ID="txtSubject" runat="server" CssClass="style7" Width="199px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtSubject" CssClass="style4" 
                            ErrorMessage="Subject is Required">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2" valign="top">
                        Comments:</td>
                    <td class="style3">
                        <asp:TextBox ID="txtComment" runat="server" CssClass="style6" Height="46px" 
                            TextMode="MultiLine" Width="199px"></asp:TextBox>
                    </td>
                    <td class="style4" valign="top">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtComment" CssClass="style4" 
                            ErrorMessage="Please leave a comment">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="3" valign="top">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                            HeaderText="Please Fix the Following Errors:" 
                            style="text-align: left; color: #FF0000" />
                    </td>
                </tr>
                <tr>
                    <td class="style5" colspan="3" valign="top">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5" colspan="3" valign="top">
                        <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                            Text="Submit" />
                    </td>
                </tr>
            </table>
            
        </fieldset>
    </div>
   
</asp:Content>

