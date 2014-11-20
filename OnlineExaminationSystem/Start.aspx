<%@ Page Title="Start Exam" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Start.aspx.cs" Inherits="Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .style2
        {
            font-size: large;
            color: #000000;
        }
        .style3
        {
            color: #000000;
            font-size: small;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="560" align="center">
           <tr>
                <td class="style2"><strong>Ready to Start the Test</strong><span class="style3"> </span>
                </td>
            </tr>
            <tr>
                <td>
                    <img alt="Line" src="Images/line.gif" /></td>
            </tr>
            <tr>
                <td>
                    <p class="style1">You are about to take the 
                    Exam. The Exam contains multiple choice style questions with 25 Question 
                    for each Subject. Read the Question carefully and Choose the Correct Answer form 
                    the drop down list box then select the Next button. 
                    You are not allow to go back and change your answers once you select the Next
                    button, so choose carefully.</p>
                    <p class="style1">When you are ready to begin, select the Start button below.</p>
                </tr>                                    
            <tr>
                <td align="right">
                    <asp:Button ID="btnStart" runat="server" Text="Start" 
                        OnClick="startButton_Click" /></td>
            </tr>
        </table>
</asp:Content>

