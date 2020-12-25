<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="TCC.AddStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add student</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color: #02091B;">
    <form id="form2" runat="server">
    <div style="margin:0 0 auto; margin-left: 400px; margin-top: 5px; width: 500px; padding-top:5px; background-image:url('images/2.jpg')">
         
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnBack" runat="server" Text="Back" ForeColor="White" BorderStyle="None" BackColor="#02091B" Font-Size="Large" OnClientClick="JavaScript: window.history.back(1); return false;" CausesValidation="false" />
                    </td>
                    <td>
                          <asp:Button ID="btnAddFromFile" runat="server" Text="Add from file" ForeColor="White" BorderStyle="None" BackColor="#02091B" Font-Size="Large" OnClick="btnAddFromFile_Click" CausesValidation="false" />
                    </td>
                </tr>
            </table>

            <table style="margin-left:85px;">

                <tr>
                    <td>
                        <input style="color:#0B1054; background-color:transparent; height:40px; width:315px; padding-left:15px" id="txtName" runat="server" type="text" placeholder="First name"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="No name"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input style="color:#0B1054; background-color:transparent; height:40px; width:315px; padding-left:15px" id="txtFather" runat="server" type="text" placeholder="Father name"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFather" ErrorMessage="No father name"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input style="color:#0B1054; background-color:transparent; height:40px; width:315px; padding-left:15px" id="txtNick" runat="server" type="text" placeholder="Nick name"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtNick" ErrorMessage="No nick name"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input style="color:#0B1054; background-color:transparent; height:40px; width:315px; padding-left:15px" id="txtMother" runat="server" type="text" placeholder="Mother name"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMother" ErrorMessage="No mother name"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input style="color:#0B1054; background-color:transparent; height:40px; width:315px; padding-left:15px" id="txtEmail" runat="server" type="email" placeholder="Email"/>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="No email" ControlToValidate="txtEmail" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input style="color:#0B1054; background-color:transparent; height:40px; width:315px; padding-left:15px" id="txtPWD" runat="server" type="password" placeholder="Password"/>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txtPWD" ErrorMessage="No password"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input style="color:#0B1054; background-color:transparent; height:40px; width:315px; padding-left:15px" id="txtDeptId" runat="server" type="number" placeholder="Dept ID"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDeptId" ErrorMessage="No dept ID"/>
                    </td>
                </tr>
                <tr>
                    <td>
                     <input style="color:#0B1054; background-color:transparent; height:40px; width:315px; padding-left:15px" id="txtYear" runat="server" type="text" placeholder="Year"/>
                       <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtYear" ErrorMessage="No year"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input style="color:#0B1054; background-color:transparent; height:40px; width:315px; padding-left:15px" id="txtPhone" runat="server" placeholder="Phone"/>
                       <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone" ErrorMessage="No phone"/>
                    </td>
                </tr>
                <tr>
                    <td>
                     <input style=" background-color:transparent; height:40px; width:315px; padding-left:15px" id="txtBirthDate" runat="server" type="date" placeholder="BirthDate"/>
                       <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBirthDate" ErrorMessage="No birth date"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubmit" runat="server" Text="Add" onclick="btnSubmit_Click" Height="40px" Width="250px" ForeColor="White" BorderStyle="None" BackColor="#02091B" Font-Size="X-Large"/>
                   
                        
                    </td>
                   
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
