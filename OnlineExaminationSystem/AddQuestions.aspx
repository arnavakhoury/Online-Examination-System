<%@ Page Title="Add Questions" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="AddQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 128px;
        }
        .style4
        {
            color: #FF6600;
            font-size: 22pt;
        }
        .style5
        {
            width: 128px;
            text-align: right;
            color: #000000;
        }
        .style6
        {
            width: 184px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" class="style2">
        <tr>
            <td class="style4" colspan="2">
                Add
                Question</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td style="font-weight: 700; color: #000000" class="style6">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
            <td style="font-weight: 700; color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Question ID:</td>
            <td class="style6">
                <asp:TextBox ID="txtQuestionID" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtQuestionID" Display="Dynamic" 
                    ErrorMessage="Question ID Required" style="color: #FF0000"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="txtQuestionID" Display="Dynamic" 
                    ErrorMessage="Invalid Question ID" style="color: #FF0000" 
                    ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" valign="top">
                Title:</td>
            <td class="style6">
                <asp:TextBox ID="txtTitle" runat="server" Width="227px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtTitle" ErrorMessage="Title Required" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Answer 1:</td>
            <td class="style6">
                <asp:TextBox ID="txtAnswer1" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtAnswer1" ErrorMessage="Answer1 Required " 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Answer 2:</td>
            <td class="style6">
                <asp:TextBox ID="txtAnswer2" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtAnswer2" ErrorMessage="Answer2 Required " 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Answer 3:</td>
            <td class="style6">
                <asp:TextBox ID="txtAnswer3" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtAnswer3" ErrorMessage="Answer 3 Required" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Answer 4:</td>
            <td class="style6">
                <asp:TextBox ID="txtAnswer4" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtAnswer4" ErrorMessage="Answer4 Required" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Correct Answer:</td>
            <td class="style6">
                <asp:DropDownList ID="ddlCorrectAnswer" runat="server" Height="22px" 
                    Width="225px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="ddlCorrectAnswer" ErrorMessage="Correct Answer Required" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" valign="top">
                Answer Explanation:</td>
            <td class="style6">
                <asp:TextBox ID="txtAnswerExplanation" runat="server" Width="227px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Question Order:</td>
            <td class="style6">
                <asp:DropDownList ID="ddlQuestionOrder" runat="server" Height="22px" 
                    Width="225px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem Value="16"></asp:ListItem>
                    <asp:ListItem Value="17"></asp:ListItem>
                    <asp:ListItem Value="18"></asp:ListItem>
                    <asp:ListItem Value="19"></asp:ListItem>
                    <asp:ListItem Value="20"></asp:ListItem>
                    <asp:ListItem Value="21"></asp:ListItem>
                    <asp:ListItem Value="22"></asp:ListItem>
                    <asp:ListItem Value="23"></asp:ListItem>
                    <asp:ListItem Value="24"></asp:ListItem>
                    <asp:ListItem Value="25"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="ddlQuestionOrder" ErrorMessage="Question Order Required" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" valign="top">
                Exam ID:</td>
            <td class="style6">
                <asp:DropDownList ID="ddlExamID" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="ExamID" DataValueField="ExamID" 
                    Height="22px" Width="223px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>" 
                    SelectCommand="SELECT [ExamID] FROM [Exam]"></asp:SqlDataSource>
            </td>
            <td valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    Display="Dynamic" ErrorMessage="Exam ID Required" style="color: #FF0000" 
                    ControlToValidate="ddlExamID"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                    runat="server" ControlToValidate="ddlExamID" Display="Dynamic" 
                    ErrorMessage="Invalid Exam ID" style="color: #FF0000" 
                    ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="btnAddQuestion" runat="server" Text="Add Question" 
                    onclick="btnAddQuestion_Click" />
&nbsp;<input id="Reset1" type="reset" value="Reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

