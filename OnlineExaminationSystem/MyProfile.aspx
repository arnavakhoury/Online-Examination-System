<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            color: #000000;
        }
        .style3
        {
            color: #FF6600;
            font-size: x-large;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
   
        <span class="style3"><strong>About Me</strong></span>
        <asp:DataList ID="DataList1" runat="server" 
            style="color: #000000; font-size: large">
        <ItemTemplate>
         <table class="style2">
                                <tr>
                                    <td rowspan="7" class="style6" align="left" valign="top">
                                       <img src="<%# Eval("Photo") %>" height="200px" width="200px"/></td>
                                    <td class="style8">
                                        Student ID:</td>
                                    <td class="style7">
                                       <%# Eval("StudentID") %></td>
                                    
                                    
                                </tr>
                                <tr>
                                    <td class="style8">
                                        Name:</td>
                                    <td class="style7">
                                       <%# Eval("Name") %></td>
                                    
                                    
                                </tr>
                                <tr>
                                    <td class="style8">
                                        Roll Number:</td>
                                    <td class="style7">
                                        <%# Eval("RollNumber") %></td>
                                    
                                    
                                </tr>
                                <%--<tr>
                                    <td class="style8">
                                        Username:</td>
                                    <td class="style7">
                                       <%# Eval("Username") %></td>
                                    
                                    
                                </tr>--%>
                                <tr>
                                    <td class="style8">
                                        Faculty:</td>
                                    <td class="style7">
                                        <%# Eval("Faculty") %></td>
                                    
                                    
                                </tr>
                                 <tr>
                                    <td class="style8">
                                        Semester:</td>
                                    <td class="style7">
                                        <%# Eval("Semester") %></td>
                                    
                                    
                                </tr>
                                <tr>
                                    <td class="style8">
                                        Email:</td>
                                    <td class="style7">
                                       <%# Eval("Email") %></td>
                                    
                                    
                                </tr>
                            </table>
        </ItemTemplate>
        </asp:DataList>
     
</asp:Content>

