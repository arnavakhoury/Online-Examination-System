<%@ Page Title="Manage Student" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageStudent.aspx.cs" Inherits="ManageStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
        font-size: 20px;
        color: #FF6600;
    }
        .style4
        {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2">
    <tr>
        <td>
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/Images/Button-Add-icon.png" onclick="ImageButton1_Click" />
&nbsp;<span class="style3"><strong>Student</strong></span></td>
    </tr>
    <tr>
        <td class="style4">
            <asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl="~/EditStudent.aspx">Edit | Delete Student</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="Student ID" />
                    <asp:BoundField DataField="Name" HeaderText="Student Name" />
                    <asp:BoundField DataField="RollNumber" HeaderText="Roll Number" />
                    <asp:BoundField DataField="Username" HeaderText="Username" />
                    <asp:BoundField DataField="Faculty" HeaderText="Faculty" />
                    <asp:BoundField DataField="Semester" HeaderText="Semester" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                            <asp:Image ID="Image1" Height="100px" Width="100px" runat="server" ImageUrl='<%# Bind("Photo") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            
        </td>
    </tr>
    
</table>
</asp:Content>

