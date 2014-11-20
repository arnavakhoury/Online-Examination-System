<%@ Page Title="Faculty" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Faculty.aspx.cs" Inherits="Faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            color: #FF6600;
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2">
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Images/Button-Add-icon.png" onclick="ImageButton1_Click" />
                <span class="style3"><strong>&nbsp;Faculty</strong></span></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="FacultyID" DataSourceID="SqlDataSource1" CellPadding="4" 
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
                        <asp:BoundField DataField="FacultyID" HeaderText="FacultyID" ReadOnly="True" 
                            SortExpression="FacultyID" />
                        <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                            SortExpression="Faculty" />
                        <asp:BoundField DataField="Duration" HeaderText="Duration" 
                            SortExpression="Duration" />
                        <asp:BoundField DataField="Fee" HeaderText="Fee" SortExpression="Fee" />
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
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>" 
                    DeleteCommand="DELETE FROM [Faculty] WHERE [FacultyID] = @original_FacultyID AND [Faculty] = @original_Faculty AND [Duration] = @original_Duration AND [Fee] = @original_Fee" 
                    InsertCommand="INSERT INTO [Faculty] ([FacultyID], [Faculty], [Duration], [Fee]) VALUES (@FacultyID, @Faculty, @Duration, @Fee)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Faculty]" 
                    UpdateCommand="UPDATE [Faculty] SET [Faculty] = @Faculty, [Duration] = @Duration, [Fee] = @Fee WHERE [FacultyID] = @original_FacultyID AND [Faculty] = @original_Faculty AND [Duration] = @original_Duration AND [Fee] = @original_Fee">
                    <DeleteParameters>
                        <asp:Parameter Name="original_FacultyID" Type="String" />
                        <asp:Parameter Name="original_Faculty" Type="String" />
                        <asp:Parameter Name="original_Duration" Type="String" />
                        <asp:Parameter Name="original_Fee" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FacultyID" Type="String" />
                        <asp:Parameter Name="Faculty" Type="String" />
                        <asp:Parameter Name="Duration" Type="String" />
                        <asp:Parameter Name="Fee" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Faculty" Type="String" />
                        <asp:Parameter Name="Duration" Type="String" />
                        <asp:Parameter Name="Fee" Type="Decimal" />
                        <asp:Parameter Name="original_FacultyID" Type="String" />
                        <asp:Parameter Name="original_Faculty" Type="String" />
                        <asp:Parameter Name="original_Duration" Type="String" />
                        <asp:Parameter Name="original_Fee" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        
    </table>
</asp:Content>

