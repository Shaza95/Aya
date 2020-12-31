<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Posts.aspx.cs" Inherits="TCC.Posts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Design\css\StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color: darkslategray; padding-left: 220px; padding-right: 220px;">
    <form id="form1" runat="server">
        <div id="main" runat="server">
        </div>
        <div id="divEditComment" runat="server" visible="false">
            <table>
                <tr>
                    <td>
                        <textarea id="taComment" runat="server"></textarea>
                    </td>
                    <td>
                        <asp:Button id="btnUpdate" runat="server" Text="Update" onclick="btnUpdate_Click"></asp:Button>
                    </td>
                    <td>
                        <asp:Button id="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click"></asp:Button>
                    </td>
                </tr>
            </table>
        </div>
        <asp:HiddenField ID="hf" runat="server" />
    </form>

</body>
</html>
