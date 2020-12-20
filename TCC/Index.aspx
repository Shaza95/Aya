<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TCC.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TCC Site</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-image: url('images/4.jpg')">
    <form id="form1" runat="server">
        <div style="margin-left:60px; margin-top:50px;">
            <label style="padding:10px; color:white; font-size:35px;" >
                TCC Site
            </label>
        </div>
    <div style="margin: 0 auto; border: 1px solid #02091B; background-color: #02091B; width: 300px; margin-top: 120px; height:300px; padding:50px">
            <table>
                <tr>
                    <td>
                        <input id="txtEmail" placeholder="Email" style="width: 280px; height: 50px; padding-left:10px; background-color: mintcream" runat="server" type="email" />
                        <asp:RequiredFieldValidator ID="rfvUser" ForeColor="#9933ff" ErrorMessage="Please enter Email" ControlToValidate="txtEmail" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input id="txtPWD" placeholder="Password" style="width: 284px; height: 50px; padding-left:10px; background-color: mintcream" runat="server" type="password" />
                        <asp:RequiredFieldValidator ID="rfvPWD" runat="server" ForeColor="#9933ff" ControlToValidate="txtPWD" ErrorMessage="Please enter Password"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Width="291px" Text="LOGIN" onclick="btnSubmit_Click" Height="56px" Font-Size="Larger" ForeColor="White" BackColor="Teal" />
                        &nbsp;&nbsp;</td>
                    </tr>
                <tr>
                    <td>
                        <p style="color: azure">Not registered?</p> 
                        <asp:LinkButton ID="Visitor" runat="server" Text="Login as a visitor" OnClick="btnVisitor_Click" CausesValidation="False" ForeColor="powderblue"></asp:LinkButton>
                    </td>
                </tr>
            </table>
         </div>
    </form>
</body>
</html>
