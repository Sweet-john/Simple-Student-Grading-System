<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="S_AssS.aspx.cs" Inherits="WebApplication1.S_AssS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        p {
            margin: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            opacity: 0.8;
            background-color: #F0F0F0;
            border-radius: 5px;
            height: 473px;
            width: 703px;
        }
      .l {
            border-radius:5px;
        }
      body{
            background-image: url("img/3.png");
            background-size: 100%;
            background-repeat: no-repeat;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <p>
             <br />
&nbsp;&nbsp;
            <asp:Label ID="id" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
             <br />
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
             <br />
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
             <br />
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
             <br />
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
             <br />
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
             <br />
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
             <br />
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Comment:" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;<asp:Label ID="Label8" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
             <br />
        <br/>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button2" runat="server" Text="Enter Assignment" OnClick="Button2_Click" CssClass="l" Width="160px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="40px" Font-Size="Medium"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" CssClass="l" Width="160px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="40px" Font-Size="Medium"/>
        
         </p>
    </form>
</body>
</html>
