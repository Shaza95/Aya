<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubjectManagement.aspx.cs" Inherits="TCC.SubjectManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Subject management</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="height: 100px; background-color:#02091B; padding-top:50px;">
            <label style="margin-left:100px; margin-right:50%; color:white; font-size:40px">
                    TCC Site
            </label>
            <asp:Button ID="btnLogout" runat="server" Text="Sign Out" BackColor="#02091B" ForeColor="White" Font-Size="20px" Width="100px" Height="50px" BorderStyle="Groove" OnClick="btnLogout_Click"/>
            <asp:Button ID="btnBack" runat="server" Text="Back" BackColor="#02091B" ForeColor="White" Font-Size="20px" Width="100px" Height="50px" BorderStyle="Groove"  OnClientClick="JavaScript: window.history.back(1); return false;" CausesValidation="false" />
       </div>
        <div style="height:50px; padding:25px;">
            <label style="margin-left:100px; margin-right:70%; color:white; font-size:10px">
                    Subjects data:
            </label>
            <asp:Button ID="btnAddSubject" runat="server" Text="Add subject" BackColor="#336699" ForeColor="White" Font-Size="15px" Width="150px" Height="50px" BorderStyle="Groove"  onclick="btnAddSubject_Click"/>
        </div>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" DataSourceID="SqlDataSource1" CellPadding="25" HeaderStyle-BackColor="#336699" HeaderStyle-BorderColor="White" HeaderStyle-ForeColor="White">
            <Columns>
                <asp:BoundField DataField="Id" ReadOnly="true" ConvertEmptyStringToNull="false" HeaderText="Id"/>
                <asp:BoundField DataField="Name" ConvertEmptyStringToNull="false" HeaderText="Name"/>
                <asp:BoundField DataField="Dept" ConvertEmptyStringToNull="false" HeaderText="Department"/>
                <asp:BoundField DataField="Year" ConvertEmptyStringToNull="false" HeaderText="Year"/>
                <asp:BoundField DataField="Description" ConvertEmptyStringToNull="false" HeaderText="Description"/>
                <asp:BoundField DataField="TeacherName" ConvertEmptyStringToNull="false" HeaderText="TeacherName"/>
                <asp:CommandField HeaderText="Edit" ShowEditButton="True" ShowHeader="True" />
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" ShowHeader="True" />
            </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tccCon %>" SelectCommand="SELECT Subjects.Id, Subjects.[Name], [Year], Departments.[Name] AS Dept, [Description], TeacherName FROM Subjects JOIN Departments ON Subjects.DeptId = Departments.Id" UpdateCommandType="Text" UpdateCommand="" DeleteCommandType="Text" DeleteCommand="">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
