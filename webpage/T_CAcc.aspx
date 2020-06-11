<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T_CAcc.aspx.cs" Inherits="WebApplication1.T_CAcc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="mystyle.css" />
    <style type="text/css">
        body {
            background-image: url("img/5.png");
            background-size: 100%;
            background-repeat: no-repeat;
        }
       p {
         margin: 0;
         position: absolute;
         top: 50%;
         left: 50%;
         transform: translate(-50%, -50%);
         opacity:0.8;
         background-color:#F0F0F0;
         border-radius:5px;
         padding-bottom:10px;
        }
       .l {
            border-radius:10px;
        }
       div{
            background-color:lightpink;
            height: 30px;
            line-height:1px;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Student Grading System" Font-Bold="True" Font-Names="Arial" ForeColor="White" Font-Size="XX-Large"></asp:Label>
        </div>
        <p style="height: 230px; width: 507px;" >
            &nbsp;<br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Username" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="230px" Height="23px"  ></asp:TextBox>
            
            <br />
            
            <br/>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="230px" Height="23px"></asp:TextBox>
            <br />
            <br/>

            &nbsp;&nbsp;&nbsp;

            <asp:Label ID="Label4" runat="server" Text="E-mail" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
            &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="230px" Height="23px" ></asp:TextBox>
            <br />
            <br/>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" cssclass="l" OnClick="Button1_Click" Text="Create Account" Width="160px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="40px" Font-Size="Medium" />
                    
            &nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" cssclass="l" OnClick="Button2_Click" Text="Back" Width="160px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="40px" Font-Size="Medium"/>
                    
        </p>
    </form>
</body>
</html>
