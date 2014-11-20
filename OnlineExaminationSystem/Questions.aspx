<%@ Page Title="Exam Questions" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Questions.aspx.cs" Inherits="Questions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: medium;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
        <table width="560" align="center">
            <tr>
                <td class="h1"><span class="style2">Current Test:</span>&nbsp;
                    <asp:Label ID="lblCurrentTest" runat="server" 
                        style="color: #FF6600; font-size: large; font-weight: 700;"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <img alt="" src="Images/line.gif" /></td>
            </tr>                        
            <tr>
                <td>
                    <asp:DetailsView ID="questionDetails" runat="server" Height="50px" Width="550px" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" CssClass="generaltext" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" CssClass="boldtext" Width="100px" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="QuestionOrder" HeaderText="Question No:" />
                            <asp:BoundField DataField="Title" HeaderText="Question:" SortExpression="Title" />
                            <asp:BoundField DataField="Answer1" HeaderText="Answer 1:" SortExpression="Answer1" />
                            <asp:BoundField DataField="Answer2" HeaderText="Answer 2:" SortExpression="Answer2" />
                            <asp:BoundField DataField="Answer3" HeaderText="Answer 3:" SortExpression="Answer3" />
                            <asp:BoundField DataField="Answer4" HeaderText="Answer 4:" SortExpression="Answer4" />
                        </Fields>
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" CssClass="generaltext" />
                    </asp:DetailsView>
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>" SelectCommand="SELECT [QuestionID], [Title], [Answer1], [Answer2], [Answer3], [Answer4], [CorrectAnswer], [QuestionOrder] FROM [Question] WHERE ([ExamID] = @ExamID) ORDER BY [QuestionOrder]">
                        <SelectParameters>
                            <asp:SessionParameter SessionField="ExamID" Type="Int32" Name="ExamID" DefaultValue="0" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="boldtext">
                    <span class="style1">Your Answer:</span>&nbsp;
                <asp:DropDownList ID="ddlAnswer" runat="server">
                            <asp:ListItem Value="1">Answer 1</asp:ListItem>
                            <asp:ListItem Value="2">Answer 2</asp:ListItem>
                            <asp:ListItem Value="3">Answer 3</asp:ListItem>
                            <asp:ListItem Value="4">Answer 4</asp:ListItem>
                        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Button ID="btnNext" runat="server" OnClick="nextButton_Click" 
                        Text="Next" />
                </td>
            </tr>                                    
        </table>
</asp:Content>

