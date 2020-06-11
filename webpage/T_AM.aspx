<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T_AM.aspx.cs" Inherits="WebApplication1.T_AM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body{
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
            opacity: 0.8;
            background-color: #F0F0F0;
            border-radius: 5px;
            height: 447px;
            width: 1207px;
        }
        .l {
            border-radius:5px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            &nbsp;<br />
&nbsp;&nbsp;
            <asp:Label ID="id" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
            &nbsp;
            <asp:Label ID="username" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        
            <br />
            <br />
&nbsp;&nbsp;
        
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>
            <br />
        <br/>
                &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>
            <br />
        <br/>
                &nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>
            <br />
        <br/>
                &nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>
            <br />
        <br/>
                &nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>
            <br />
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="comment" runat="server" Text="Comment" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="609px" Height="23px"></asp:TextBox>
            <br />
        <br/>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="l" Width="160px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="40px" Font-Size="Medium" />
            &nbsp;
            <asp:Label ID="Label6" runat="server" Text="Assignment:" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="Larger"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox6" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label7" runat="server" Text="Username:" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="Larger"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox7" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Enter Answer" OnClick="Button2_Click" CssClass="l" Width="160px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="40px" Font-Size="Medium" />
            &nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Back" OnClick="Button3_Click" CssClass="l" Width="160px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="40px" Font-Size="Medium"/>
            </p>
    </form>
</body>
</html>
