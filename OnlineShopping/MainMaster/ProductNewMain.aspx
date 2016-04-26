<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ProductNewMain.aspx.cs" Inherits="OnlineShopping.ProductNewMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

      <div id="containerDiv" style="text-align:center;">
        
        <h4>
            ADD NEW PRODUCTS
           
        </h4>
        <hr />
    </div>
    <table>
        <tr>
            <td>
                ProductName
            </td>
            <td>
                <asp:TextBox ID="txtPrdName" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>
                Product Category
            </td>
            <td>
                <asp:DropDownList ID="ddlprdCategory"  Width="220px"  runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                Product Description
            </td>
            <td>
                <asp:TextBox ID="txtProdDescrip" runat="server" TextMode="MultiLine" width="220px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>

            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                Product Image
            </td>
            <td>
                <asp:FileUpload ID="uploadprdimage" runat="server" />
            </td>
        </tr>
         <tr>
            <td>

            </td>
            <td></td>
        </tr>
         <tr>
            <td>
                Product Price
            </td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>

                Product Quantity</td>
            <td>
                 <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
               </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="txtSubmit" runat="server" Text="Submit" OnClick="txtSubmit_Click" />
            </td>
        </tr>
       
    </table>
                 <%--</ContentTemplate> 
          <Triggers>
                <asp:PostBackTrigger ControlID="txtSubmit" />
            </Triggers>
       </asp:UpdatePanel> --%>
</asp:Content>
