<%@ Page Title="User Help" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserHelp.aspx.cs" Inherits="UserHelp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
   How to Give Online Examination System?</h2>
    <ol class="style1">
        <li>After successful login student can see his/her profile information.</li>
        <li>Student can also change their default password from <b>Change Password</b> menu.</li>
        <li>To appear in Exam go to <b>Exam</b> menu</li>
        <li>List of all Available Test will be Displayed.</li>
        <li>Click Subject you want to give Exam</li>
        <li>Student will be taken to <b>"Ready to Start the Test"</b> page</li>
        <li>Read all the Terms & Conditions and Click <b>Start</b> button to Start Exam</li>
        <li>Read the Question carefully and Select Correct answer from the Dropdown list and Click <b>Next</b></li>
        <li>You are not allowed to go back or make changes to answer after moving to next question</li>
        <li>Repeat Step 8 untill you finished your Questions</li>
        <li>After Finishing Exam your Performance will be displayed in <b>Result Table</b> along with Details</li>
        <li>You can click on <b>Select</b> button and see more detail if you want</li>
        <li>To View you Score, click on <b>Return to Main Menu</b> at the bottom of your Test Result</li>
        <li>You can see your Score in <b>Test Result History</b> and can again choose Subject you want to Give Exam if you want</li>
    </ol>
	
</asp:Content>

