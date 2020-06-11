<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T.aspx.cs" Inherits="WebApplication1.T" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        p {
         margin: 0;
         position: absolute;
         top: 50%;
         left: 50%;
         transform: translate(-50%, -50%);
         opacity:0.9;
        }
        body
        {
            background-image:url("img/5.png");
            background-size:100%;
            background-repeat:no-repeat;
        }
        .l {
            border-radius:10px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
            <p>
            <asp:Button ID="Button1" cssclass="l" runat="server" Text="Create Account" OnClick="Button1_Click" Width="200px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="50px" Font-Size="Medium"/>
            &nbsp;&nbsp;
            <asp:Button ID="Button2" cssclass="l" runat="server" Text="Create Assignment" OnClick="Button2_Click" Width="200px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="50px" Font-Size="Medium"/>
            &nbsp;&nbsp;
            <asp:Button ID="Button3" cssclass="l" runat="server" Text="Assignment Marking" OnClick="Button3_Click" Width="200px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="50px" Font-Size="Medium"/>
            &nbsp;&nbsp;
            <asp:Button ID="Button4" cssclass="l" runat="server" OnClick="Button4_Click" Text="Log Out" Width="200px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="50px" Font-Size="Medium"/>
            </p>
    </form>
</body>
</html>
