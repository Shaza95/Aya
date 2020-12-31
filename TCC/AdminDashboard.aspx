<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="TCC.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="height: 100px; background-color:#02091B; padding-top:50px;">
        <label style="margin-left:100px; margin-right:50%; color:white; font-size:40px">
                TCC Site
        </label>
        <asp:Button ID="btnLogout" runat="server" Text="Sign Out" BackColor="#02091B" ForeColor="White" Font-Size="20px" Width="100px" Height="50px" BorderStyle="Groove" OnClick="btnLogout_Click"/>
        </div>
        <div style="height:250px; background-image:url('images/5.jpg');  padding:60px">
            <table>
                <tr>
                    <td style="margin:100px">
                        <asp:Button ID="btnStudentManagment" runat="server" Text="Students management" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="btnStudentManagment_Click"/>
                    </td>
                </tr>
                <tr>
                    <td style="margin:100px">
                        <asp:Button ID="btnSubjectManagement" runat="server" Text="Subjects management" BackColor="white" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" onclick="btnSubjectManagement_Click"/>
                    </td>
                </tr>
                <tr>
                    <td style="margin:100px">
                        <asp:Button ID="btnPostssManagement" runat="server" Text="Posts management" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="btnPostsManagement_Click"/>
                    </td>
                </tr>
            </table>
    </div>
    </div>
    </form>
</body>
</html>
