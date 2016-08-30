<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sample Webforms Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Hello</h1>
        <br />
        <asp:Label ID="timeLabel" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Button" Height="25px" OnClick="Button1_Click" Width="103px" /> 
    </div>
    </form>
</body>
</html>
