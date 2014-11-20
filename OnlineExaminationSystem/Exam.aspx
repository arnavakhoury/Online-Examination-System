<%@ Page Title="Exam" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: 20px;
            color: #FF6600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="560" align="center">
                                       
                    <tr>
                       <td class="style2">Available Tests</td> 
                    </tr>        
                    <tr>
                        <td width="100%"></td>
                    </tr>
                    <tr>
                        <td width="100%">
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <asp:HyperLink
                                            ID="HyperLink1" runat="server" NavigateUrl='<%# "Start.aspx?testid=" + Eval("ExamID") %>'
                                            Text='<%# Eval("Subject") %>'></asp:HyperLink><br />
                                    &nbsp;<asp:Label
                                        ID="DescriptionLabel" runat="server" CssClass="generaltext" Text='<%# Eval("Description") %>'></asp:Label>&nbsp;<br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                         <%--   <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
                                DataKeyField="ExamID">
                                <ItemTemplate>
                                    Subject:
                                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                                    <br />
                                    Description:&nbsp;<asp:Label
                                        ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>'></asp:Label><br />
                                    ExamID:
                                    <asp:Label ID="ExamIDLabel" runat="server" Text='<%# Eval("ExamID") %>' />
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>--%>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>"
                                
                                SelectCommand="SELECT [Subject], [Description], [ExamID] FROM [Exam] WHERE (([Faculty] = @Faculty) AND ([Semester] = @Semester))">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="0" Name="Faculty" SessionField="Faculty" 
                                        Type="String" />
                                    <asp:SessionParameter DefaultValue="" Name="Semester" SessionField="Semester" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>                                         
                    <tr>
                        <td width="100%">&nbsp;</td>
                    </tr>                      
                    <tr>
                        <td width="100%" class="style2">Test Result History</td>
                    </tr>
                    <tr>
                        <td width="100%">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="555px">
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" CssClass="generaltext" />
                                <Columns>
                                    <asp:BoundField DataField="Subject" HeaderText="Quiz" SortExpression="Title" >
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DateTimeComplete" DataFormatString="{0:d}" HeaderText="Completed"
                                        SortExpression="DateTimeComplete" >
                                        <FooterStyle Width="150px" />
                                        <HeaderStyle Width="150px" />
                                        <ItemStyle HorizontalAlign="Center" Width="150px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" >
                                        <FooterStyle Width="50px" />
                                        <HeaderStyle Width="50px" />
                                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                                    </asp:BoundField>
                                </Columns>
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle Font-Bold="True" CssClass="complete" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>"
                                SelectCommand="SELECT Exam.Subject, StudentExam.DateTimeComplete, StudentExam.Score FROM StudentExam INNER JOIN Exam ON StudentExam.ExamID = Exam.ExamID WHERE (StudentExam.Username = @Username) ORDER BY StudentExam.DateTimeComplete">
                                <SelectParameters>
                                    <asp:SessionParameter Name="Username" SessionField="Username" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>                                         
                    <tr>
                        <td width="100%">&nbsp;</td>
                    </tr>                                       
                            
                </table>
</asp:Content>

