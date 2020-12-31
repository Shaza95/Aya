<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDashboard.aspx.cs" Inherits="TCC.StudentDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="height: 100px; background-color:#02091B; padding-top:50px;">
        <label style="margin-left:100px; margin-right:50%; color:white; font-size:40px">
                TCC Site
        </label>
        <asp:Button ID="Button1" runat="server" Text="Sign Out" BackColor="#02091B" ForeColor="White" Font-Size="20px" Width="100px" Height="50px" BorderStyle="Groove" OnClick="btnLogout_Click"/>
        </div>
        <div style="height:250px; background-image:url('images/5.jpg');  padding:60px">
            <table>
                <tr>
                    <td style="margin:100px; padding:25px">
                        <asp:Button ID="btnSubjects" runat="server" Text="Subjects" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="btnSubjects_Click"/>
                    </td>
                </tr>
                <tr>
                    <td style="margin:100px; padding:25px">
                        <asp:Button ID="btnPosts" runat="server" Text="Posts" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="btnPosts_Click"/>
                    </td>
                </tr>
                <tr>
                    <td style="margin:100px; padding:25px">
                        <asp:Button ID="btnSavedPosts" runat="server" Text="Saved posts" BackColor="White" ForeColor="#02091B" Font-Size="12px" Width="170px" Height="50px" OnClick="btnSavedPosts_Click"/>
                    </td>
                </tr>
            </table>
    </div>
    </div>
    </form>
</body>
</html>
