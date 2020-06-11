<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="S_Ass.aspx.cs" Inherits="WebApplication1.S_Ass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        div {
         border-radius:5px;
         height:71px;
         opacity:0.8;
        }
        p{
            height:50px;
            background-color: #F0F0F0;
            border-radius:5px;
            opacity:0.8;
        }
        #Button1, #Button2, #Button3,#TextBox6 {
            border-radius:5px;
            opacity:0.8;
        }
        body {
            background-image: url("img/3.png");
            background-size: 100%;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="id" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="XX-Large"></asp:Label>
        </p>
        <br/>
                <div style="background-color: #F0F0F0; ">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
                    <br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="1422px" Height="23px" Rows="3"></asp:TextBox>
                    </div>
                <br/><br/>

        <div style="background-color: #F0F0F0">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
            <br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="1422px" Height="23px" Rows="3"></asp:TextBox>
        
            </div>
         <br/><br/>

        <div style="background-color: #F0F0F0">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
                <br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="1422px" Height="23px" Rows="3"></asp:TextBox>
        </div>
                <br/><br/>

        <div style="background-color: #F0F0F0">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
                <br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="1422px" Height="23px" Rows="3"></asp:TextBox>
            </div>
                <br/><br/>

        <div style="background-color: #F0F0F0">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Font-Size="X-Large"></asp:Label>
                <br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="1422px" Height="23px" Rows="3"></asp:TextBox>
            </div>
                <br/><br/>

        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Width="200px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="50px" Font-Size="Medium" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="TextBox6" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" Width="50px" Height="23px" Rows="3"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Enter Assignment" OnClick="Button2_Click" Width="200px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="50px" Font-Size="Medium"/>
        

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        

        <asp:Button ID="Button3" runat="server" Text="Back" OnClick="Button3_Click" Width="200px" BackColor="#3399FF" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="50px" Font-Size="Medium"/>
    </form>
</body>
</html>
