<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="TCC.Subjects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Subjects</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="height: 100px; background-color:#02091B; padding-top:50px;">
            <label style="margin-left:100px; margin-right:50%; color:white; font-size:40px">
                    TCC Site
            </label>
            <asp:Button ID="btnBack" runat="server" Text="Back" BackColor="#02091B" ForeColor="White" Font-Size="20px" Width="100px" Height="50px" BorderStyle="Groove"  OnClientClick="JavaScript: window.history.back(1); return false;" CausesValidation="false" />
       </div>
        <div style="height:50px; padding:25px;">
            <label style="margin-right:70%; color:#02091B; font-size:20px">
                    Available subjects:
            </label>
        </div>
        <div id="SubjectsTable" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="25" HeaderStyle-BackColor="#336699" HeaderStyle-BorderColor="White" HeaderStyle-ForeColor="White">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name"/>
                <asp:BoundField DataField="Year" HeaderText="Year"/>
                <%--<asp:BoundField DataField="Dept" HeaderText="Department"/>--%>
                <asp:BoundField DataField="Description" HeaderText="Description"/>
                <asp:BoundField DataField="TeacherName" HeaderText="Teacher"/>
            </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tccCon %>" SelectCommand="SELECT Subjects.[Id], Subjects.[Name], [Year], Departments.[Name] AS Dept, [Description], TeacherName FROM Subjects JOIN Departments ON Subjects.DeptId = Departments.Id">
        </asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
