<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T_CAss.aspx.cs" Inherits="WebApplication1.T_CAss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
    .l {
            border-radius:10px;
        }
 
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
         height: 592px;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p style="height: 392px; width: 1438px;">
        &nbsp;<br />
&nbsp;&nbsp;
        <asp:Label ID="assignment" runat="server" Text="Assignment" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;
        <asp:TextBox ID="number" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="35px" Height="23px" ></asp:TextBox>
  
            <br />
  
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Question1" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="1000px" Height="23px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Weight" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
            &nbsp; <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>
 
            <br />
 
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Question2" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="1000px" Height="23px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Weight" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox4" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>
     
            <br />
     
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Question3" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="1000px" Height="23px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Weight" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox6" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>
 
            <br />
 
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Question4" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="1000px" Height="23px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Weight" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox8" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>
    
    
            <br />
    
    
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Question5" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox9" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="1000px" Height="23px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Weight" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox10" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="70px" Height="23px"></asp:TextBox>

            <br />

        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="l" OnClick="Button1_Click"  Text="Create" Width="160px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="40px" Font-Size="Medium"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="l" OnClick="Button2_Click" Text="Delete" Width="160px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="40px" Font-Size="Medium"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" CssClass="l" OnClick="Button3_Click" Text="Reset" Width="160px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="40px" Font-Size="Medium"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" CssClass="l" OnClick="Button4_Click" Text="Back" Width="160px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="40px" Font-Size="Medium"/>
        </p>
    </form>
</body>
</html>
