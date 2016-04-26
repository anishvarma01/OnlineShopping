<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CategoryNewMain.aspx.cs" Inherits="OnlineShopping.CategoryNewMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">




    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">


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
                <asp:Button ID="btnSubmit" runat="server"  BorderStyle="Solid"  Text="Submit" OnClick="btnSubmit_Click" />

            </td>
                    </tr>
                </table>
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr> 
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MainMaster/ProductNewMain.aspx">Click here to go to ProductsPage</asp:HyperLink>
            </td>
        </tr>
        </table>
</asp:Content>
