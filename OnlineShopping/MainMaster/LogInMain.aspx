<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LogInMain.aspx.cs" Inherits="OnlineShopping.LogInMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
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
            <%--<td class="auto-style1" style="color:black;font:bold;"  >ID</td>--%>
            <td> <h4> ID </h4>   </td>
            <td>
                <asp:TextBox ID="txtLogIn" runat="server"  BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
<%--            <td class="auto-style1" style="color:black;font:bold">Password</td>--%>
            <td> <h4>PassWord</h4></td>
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

</asp:Content>
