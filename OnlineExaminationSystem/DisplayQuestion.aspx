<%@ Page Title="Add Questions" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="DisplayQuestion.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            color: #000000;
        }
        .style3
        {
            font-size: 22pt;
            color: #FF6600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Images/Button-Add-icon.png" onclick="ImageButton1_Click" />
&nbsp;<span class="style3"><strong>Questions</strong></span></p>
    <p>
        <span class="style2">Select ExamID:
        <asp:DropDownList ID="ddlExamID" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        </span>
    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>" 
            SelectCommand="SELECT DISTINCT [ExamID] FROM [Question]">
        </asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" 
        BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
        DataKeyNames="QuestionID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
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
            <asp:BoundField DataField="QuestionID" HeaderText="QuestionID" ReadOnly="True" 
                SortExpression="QuestionID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Answer1" HeaderText="Answer1" 
                SortExpression="Answer1" />
            <asp:BoundField DataField="Answer2" HeaderText="Answer2" 
                SortExpression="Answer2" />
            <asp:BoundField DataField="Answer3" HeaderText="Answer3" 
                SortExpression="Answer3" />
            <asp:BoundField DataField="Answer4" HeaderText="Answer4" 
                SortExpression="Answer4" />
            <asp:BoundField DataField="QuestionOrder" HeaderText="QuestionOrder" 
                SortExpression="QuestionOrder" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>" 
        DeleteCommand="DELETE FROM [Question] WHERE [QuestionID] = @QuestionID" 
        InsertCommand="INSERT INTO [Question] ([QuestionID], [Title], [Answer1], [Answer2], [Answer3], [Answer4], [QuestionOrder]) VALUES (@QuestionID, @Title, @Answer1, @Answer2, @Answer3, @Answer4, @QuestionOrder)" 
        SelectCommand="SELECT [QuestionID], [Title], [Answer1], [Answer2], [Answer3], [Answer4], [QuestionOrder] FROM [Question] WHERE ([ExamID] = @ExamID)" 
        UpdateCommand="UPDATE [Question] SET [Title] = @Title, [Answer1] = @Answer1, [Answer2] = @Answer2, [Answer3] = @Answer3, [Answer4] = @Answer4, [QuestionOrder] = @QuestionOrder WHERE [QuestionID] = @QuestionID">
        <DeleteParameters>
            <asp:Parameter Name="QuestionID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="QuestionID" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Answer1" Type="String" />
            <asp:Parameter Name="Answer2" Type="String" />
            <asp:Parameter Name="Answer3" Type="String" />
            <asp:Parameter Name="Answer4" Type="String" />
            <asp:Parameter Name="QuestionOrder" Type="Byte" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlExamID" DefaultValue="NULL" Name="ExamID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Answer1" Type="String" />
            <asp:Parameter Name="Answer2" Type="String" />
            <asp:Parameter Name="Answer3" Type="String" />
            <asp:Parameter Name="Answer4" Type="String" />
            <asp:Parameter Name="QuestionOrder" Type="Byte" />
            <asp:Parameter Name="QuestionID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
</asp:Content>

