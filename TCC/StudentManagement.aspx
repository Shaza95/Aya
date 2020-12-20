<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentManagement.aspx.cs" Inherits="TCC.StudentManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student management</title>
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
                    Students data:
            </label>
            <asp:Button ID="btnAddStudent" runat="server" Text="Add student" BackColor="#336699" ForeColor="White" Font-Size="15px" Width="150px" Height="50px" BorderStyle="Groove"  onclick="btnAddStudent_Click"/>
        </div>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" DataSourceID="SqlDataSource1" CellPadding="25" HeaderStyle-BackColor="#336699" HeaderStyle-BorderColor="White" HeaderStyle-ForeColor="White">
            <Columns>
                <asp:BoundField DataField="Id" ReadOnly="true" ConvertEmptyStringToNull="false" HeaderText="Id"/>
                <asp:BoundField DataField="Name" ConvertEmptyStringToNull="false" HeaderText="Name"/>
                <asp:BoundField DataField="Father" ConvertEmptyStringToNull="false" HeaderText="Father"/>
                <asp:BoundField DataField="Nick" ConvertEmptyStringToNull="false" HeaderText="Nick"/>
                <asp:BoundField DataField="Mother" ConvertEmptyStringToNull="false" HeaderText="Mother"/>
                <asp:BoundField DataField="DeptId" ConvertEmptyStringToNull="false" HeaderText="DeptId"/>
                <asp:BoundField DataField="Year" ConvertEmptyStringToNull="false" HeaderText="Year"/>
                <asp:BoundField DataField="BirthDate" ConvertEmptyStringToNull="false" HeaderText="BirthDate"/>
                <asp:BoundField DataField="Phone" ConvertEmptyStringToNull="false" HeaderText="Phone"/>
                <asp:BoundField DataField="Email" ConvertEmptyStringToNull="false" HeaderText="Email"/>
                <asp:BoundField DataField="Password" ConvertEmptyStringToNull="false" HeaderText="Password"/>
                <asp:CommandField HeaderText="Edit" ShowEditButton="True" ShowHeader="True" />
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" ShowHeader="True" />
            </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tccCon %>" SelectCommand="SELECT Id, Name ,Father ,Nick ,Mother ,DeptId ,[Year], BirthDate ,Phone ,Email ,[Password] FROM Users WHERE DeptId <> 1" UpdateCommandType="Text" UpdateCommand="" DeleteCommandType="Text" DeleteCommand="">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
