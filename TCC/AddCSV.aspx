<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCSV.aspx.cs" Inherits="TCC.AddCSV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="gray">    
    <form id="form1" runat="server">    
    <div style="color: White;">    
        <h4>    
            Add your data    
        </h4>    
        <table>    
            <tr>    
                <td>    
                    Select File    
                </td>    
                <td>    
                    <asp:FileUpload ID="FileUpload1" runat="server" />    
                </td>    
                <td>    
                </td>    
                <td>    
                    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />    
                </td>    
            </tr>    
        </table>  <br /><br />  
        
    </div>    
      
    </form>    
</body>
</html>
