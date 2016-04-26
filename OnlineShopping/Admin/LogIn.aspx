<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="OnlineShopping.Admin.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
   
    <style type="text/css">
        .auto-style1 {
            width: 126px;
        }
    </style>
    
   
</head>
<body style="background-image:url('Images/Shpng.gif'); background-size:1300px 600px;">

   <%-- //
    <body style="background-image: url(images.jpg); width:100%; height:100%;">
Body of page goes here
</body> 
    //--%>
    <form id="form1" runat="server">
    <div style="margin:200px;">
    <h3>WELCOME ADMIN ..!!</h3>
    
    <table>
        
      <%--  <tr>
       <td>
           <asp:Image ID="Image1" runat="server" ImageUrl="~/Admin/Images/Admin.png"  />
       </td>
            <td>&nbsp;</td>
        </tr>--%>
        <tr>
            <td class="auto-style1" style="color:black;font:bold;"  >ID</td>
            <td>
                <asp:TextBox ID="txtLogIn" runat="server"  BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="color:black;font:bold">Password</td>
            <td>
                <asp:TextBox ID="txtPasswrd" runat="server" BorderStyle="Solid" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td style="color:red">
                <asp:Button ID="btnSubmit" ForeColor="Black" runat="server" BorderStyle="Solid" Text="Submit" OnClick="btnSubmit_Click"  />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
               
       

            </td>
            <td>
                <asp:Label ID="lblMsg" runat="server" Text="Alert" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
               
            </td>
            <td>
                 <asp:CheckBox ID="CheckBox1" runat="server" />
                Remember Me
            </td>
        </tr> 
        <tr>
            <td>

            </td>
            <td>

            </td>
        </tr>
    </table>
        </div>
    </form>
</body>
</html>
