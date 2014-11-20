<%@ Page Title="Exam Result" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: 20px;
            color: #FF6600;
        }
        .errormessage
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="560" align="center">
            <tr>
                <td class="style2">
                    Result</td>
            </tr>
            <tr>
                <td>&nbsp;<asp:Label ID="errorLabel" runat="server" CssClass="errormessage"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="resultGrid" runat="server" DataKeyNames="QuestionID" SelectedIndex="0" 
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="resultGrid_SelectedIndexChanged" Width="555px">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" CssClass="generaltext" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundField DataField="QuestionID" HeaderText="Question" />
                            <asp:BoundField DataField="CorrectAnswer" HeaderText="Correct Answer" />
                            <asp:BoundField DataField="UserAnswer" HeaderText="Your Answer" />
                            <asp:BoundField DataField="Result" HeaderText="Result" />
                        </Columns>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" CssClass="boldtext" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>"
                        SelectCommand="SELECT [Title], [Answer1], [Answer2], [Answer3], [QuestionID], [QuestionOrder], [Answer4], [CorrectAnswer], [AnswerExplanation], [ExamID] FROM [Question] WHERE ([ExamID] = @ExamID) ORDER BY [QuestionOrder]">
                        <SelectParameters>
                            <asp:SessionParameter Name="ExamID" SessionField="ExamID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>                
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="answerDetails" runat="server" CellPadding="4" ForeColor="#333333"
                        GridLines="None" Height="45px" Width="552px" DataSourceID="SqlDataSource1" 
                        AutoGenerateRows="False" DataKeyNames="QuestionID" >
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" CssClass="generaltext" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" CssClass="boldtext" Width="100px" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Fields>
                            <asp:BoundField DataField="QuestionOrder" HeaderText="Question No.:" />
                            <asp:BoundField DataField="Title" HeaderText="Question:" />
                            <asp:BoundField DataField="Answer1" HeaderText="Answer 1:" />
                            <asp:BoundField DataField="Answer2" HeaderText="Answer 2:" />
                            <asp:BoundField DataField="Answer3" HeaderText="Answer 3:" />
                            <asp:BoundField DataField="Answer4" HeaderText="Answer 4:" />
                            <asp:TemplateField></asp:TemplateField>
                            <asp:BoundField DataField="CorrectAnswer" HeaderText="Correct Answer:" />
                            <asp:BoundField DataField="AnswerExplanation" HeaderText="Explanation:" />
                        </Fields>
                    </asp:DetailsView>                
                </td>
            </tr>
            <tr>
                <td><a href="Exam.aspx">Return to Main Menu</a></td>
            </tr>                                    
        </table>
</asp:Content>

