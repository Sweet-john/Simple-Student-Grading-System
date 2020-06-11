<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="S.aspx.cs" Inherits="WebApplication1.S"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .l {
            border-radius:10px;
        }
        div {
         margin: 0;
         position: absolute;
         top: 50%;
         left: 50%;
         transform: translate(-50%, -50%);
         opacity:0.9;
        }
        body
        {
            background-image:url("img/3.png");
            background-size:100%;
            background-repeat:no-repeat;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Button ID="Button1" cssclass="l" runat="server" OnClick="Button1_Click" Text="Submit Assignment" Width="200px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="50px" Font-Size="Medium"/>
            &nbsp;&nbsp;
            <asp:Button ID="Button2" cssclass="l" runat="server" OnClick="Button2_Click" Text="Assignment Summary" Width="200px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="50px" Font-Size="Medium"/>
            
            &nbsp;&nbsp;
            
            <asp:Button ID="Button3" cssclass="l" runat="server" OnClick="Button3_Click" Text="Log Out" Width="200px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="50px" Font-Size="Medium"/>
            
        </div>
    </form>
</body>
</html>
