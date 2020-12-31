<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostManagement.aspx.cs" Inherits="TCC.PostManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Post management</title>
    <style type="text/css">
        #TextArea1 {
            height: 100px;
            width: 265px;
        }

        #File1 {
            width: 203px;
        }
    </style>
    <link href="Design\css\StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>

<body style="background-color: darkslategray; padding-left: 220px; padding-right: 220px;">
    <form id="form1" runat="server">
        <div style="background-color: darkcyan; padding: 50px">
            <br />
            <br />
            Add Post:<br />
            <asp:TextBox runat="server" ID="TextArea1" TextMode="Multiline" Columns="20" Name="S1" Rows="4"></asp:TextBox>
            <br />
            &nbsp; add file:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" Width="82px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
            &nbsp; add image:&nbsp;
        <asp:FileUpload ID="FileUpload2" runat="server" Width="80px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" runat="server" Text="post" CssClass="commentBtn" OnClick="addPost" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
        </div>

        <div id="main" runat="server">
        </div>
    </form>
</body>
</html>
