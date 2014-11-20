<%@ Page Title="Manage Member" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="MemberSetting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        font-size: 20px;
        color: #FF6600;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
    <tr>
        <td>
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/Images/Button-Add-icon.png" onclick="ImageButton1_Click" />
&nbsp;<span class="style2"><strong>Member</strong></span></td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="MemberID" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;
                            <span onclick="return confirm('Are you sure you want to Delete the Record?')">
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="MemberID" HeaderText="MemberID" ReadOnly="True" 
                        SortExpression="MemberID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" 
                        SortExpression="Username" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>" 
                DeleteCommand="DELETE FROM [Member] WHERE [MemberID] = @MemberID" 
                InsertCommand="INSERT INTO [Member] ([MemberID], [Username]) VALUES (@MemberID, @Username)" 
                SelectCommand="SELECT [MemberID], [Username] FROM [Member] ORDER BY [MemberID]" 
                UpdateCommand="UPDATE [Member] SET [Username] = @Username WHERE [MemberID] = @MemberID">
                <DeleteParameters>
                    <asp:Parameter Name="MemberID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MemberID" Type="String" />
                    <asp:Parameter Name="Username" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="MemberID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

