<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Posts.aspx.cs" Inherits="TCC.Posts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Design\css\StyleSheet1.css" rel="stylesheet" type="text/css" />
    <%--<script type="text/javascript" src="Design/js/jquery.min.js">
    </script>
    <script type="text/javascript">
        $(function () {
            $(".editable").each(function () {
                var label = $(this);
                label.after("<input type='text' style='display:none' />");
                var textbox = $(this).next();
                var id = this.id;
                textbox.val(label.html());
                label.click(function () {
                    $(this).hide();
                    $(this).next().show();
                });
                textbox.focusout(function () {
                    $(this).hide();
                    $(this).prev.html($this.val());
                    $(this).prev().show();
                });
            }
            );
        });
    </script>--%>
</head>
<body style="background-color: darkslategray; padding-left: 220px; padding-right: 220px;">
    <form id="form1" runat="server">
        <div id="main" runat="server">
        </div>
    </form>

</body>
</html>
