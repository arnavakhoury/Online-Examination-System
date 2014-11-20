<%@ Page Title="Subjects" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Subject.aspx.cs" Inherits="Subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            font-size: large;
        }
        .style4
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
                <span class="style3"><strong>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Images/Button-Add-icon.png" onclick="ImageButton1_Click" />
                </span>
                <span class="style4">&nbsp;Subject</span><span class="style3"> </span>
                </strong>
            </td>
        </tr>
        

        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="ExamID" DataSourceID="SqlDataSource1" 
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
                        <asp:BoundField DataField="ExamID" HeaderText="ExamID" ReadOnly="True" 
                            SortExpression="ExamID" />
                        <asp:BoundField DataField="Subject" HeaderText="Subject" 
                            SortExpression="Subject" />
                        <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                            SortExpression="Faculty" />
                        <asp:BoundField DataField="Semester" HeaderText="Semester" 
                            SortExpression="Semester" />
                        <asp:BoundField DataField="Description" HeaderText="Description" 
                            SortExpression="Description" />
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
                    DeleteCommand="DELETE FROM [Exam] WHERE [ExamID] = @ExamID" 
                    InsertCommand="INSERT INTO [Exam] ([ExamID], [Subject], [Faculty], [Semester], [Description]) VALUES (@ExamID, @Subject, @Faculty, @Semester, @Description)" 
                    SelectCommand="SELECT * FROM [Exam] ORDER BY [ExamID]" 
                    UpdateCommand="UPDATE [Exam] SET [Subject] = @Subject, [Faculty] = @Faculty, [Semester] = @Semester, [Description] = @Description WHERE [ExamID] = @ExamID">
                    <DeleteParameters>
                        <asp:Parameter Name="ExamID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ExamID" Type="Int32" />
                        <asp:Parameter Name="Subject" Type="String" />
                        <asp:Parameter Name="Faculty" Type="String" />
                        <asp:Parameter Name="Semester" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Subject" Type="String" />
                        <asp:Parameter Name="Faculty" Type="String" />
                        <asp:Parameter Name="Semester" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="ExamID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

