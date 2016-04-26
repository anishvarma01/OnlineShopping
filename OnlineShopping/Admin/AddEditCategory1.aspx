<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddEditCategory1.aspx.cs" Inherits="OnlineShopping.Admin.AddEditCategory1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntplcholder1" runat="server">
    <%--<div align="CENTER">--%>
    <div id="containerDiv" style="text-align:center;">
        <h4>
            ADD NEW CATEGORY
           
        </h4>
        <Hr />
    </div>

    <table style="text-align:center;">
        <tr>
            <td>CATEGORY NAME </td>
            <td>
                </td>
               
        </tr>
        <tr>
            <td>
                 <asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox></td>
            
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <table style="text-align:right;" >
                    <tr>
                         <td colspan="2" style="align-content:flex-end">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

            </td>
                    </tr>
                </table>
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>
