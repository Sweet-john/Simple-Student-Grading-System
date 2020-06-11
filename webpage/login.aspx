<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <!--<link rel="stylesheet" type="text/css" href="mystyle.css" />-->
    <style type="text/css">
        .l {
            border-radius:10px;
        }
        p {
         margin: 0;
         position: absolute;
         top: 50%;
         left: 50%;
         transform: translate(-50%, -50%);
         opacity:0.9;
        }
        div{
            background-color:lightpink;
            height: 30px;
            line-height:1px;
        }
        body
        {
            background-image:url("img/2.png");
            background-size:100%;
            background-repeat:no-repeat;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"  Text="Student Grading System"  Font-Bold="True" Font-Names="Arial" ForeColor="White" Font-Size="XX-Large" ></asp:Label>
        </div>
        <p style=" height: 227px; width: 50%;  border-radius:15px; background-color: #CCCCCC;">
            &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server"  Text="username" Font-Bold="True" Font-Names="Arial" ></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" CssClass="l" runat="server" Height="25px" style="margin-bottom: 0px" Width="696px" Wrap="False" ></asp:TextBox>
            
            <br />
            
            <br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server"  Text="password" Font-Bold="True" Font-Names="Arial"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" CssClass="l" runat="server" Height="28px" style="margin-bottom: 1px; margin-right: 0px; " Width="695px"></asp:TextBox>
            <br />
            <br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" CssClass="l" runat="server" OnClick="Button2_Click" Text="Student Log In" Width="150px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="50px" Font-Size="Medium"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" CssClass="l" runat="server" OnClick="Button1_Click" Text="Teacher Log In" Width="150px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="50px" Font-Size="Medium" />
                    
        </p>
    </form>
</body>
</html>
