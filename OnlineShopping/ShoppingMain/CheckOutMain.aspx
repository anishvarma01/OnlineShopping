<%@ Page Title="" Language="C#" MasterPageFile="~/Shopping.Master" AutoEventWireup="true" CodeBehind="CheckOutMain.aspx.cs" Inherits="OnlineShopping.CheckOutMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
      <div>
    <asp:GridView ID="Basket" runat="server" AutoGenerateColumns="False" 
    GridLines="None" EnableViewState="False" ShowFooter="True" 
    DataKeyNames="  id"  OnRowCreated="Basket_RowCreated"   >



    <Columns>
      <asp:TemplateField HeaderText="Remove">
        <ItemTemplate>
          <asp:CheckBox ID="RemovedProducts" runat="server" />
        </ItemTemplate>
      </asp:TemplateField>
      <asp:TemplateField HeaderText="Product" SortExpression="ProductName">
        <ItemTemplate>
          <asp:Label ID="ProductName" runat="server" Text='<%# Eval("Name") %>' />
        </ItemTemplate>
        <FooterTemplate>
          <strong>
            Total Price:
          </strong>
        </FooterTemplate>
      </asp:TemplateField>
      <asp:TemplateField HeaderText="Price" SortExpression="UnitPrice">
        <ItemTemplate>
          <asp:Label ID="Price" runat="server" Text='<%# Eval("Price", "{0:c}") %>' />
        </ItemTemplate>
        <FooterTemplate>
          <strong>
            <asp:Literal ID="TotalPrice" runat="server" />
          </strong>
        </FooterTemplate>
      </asp:TemplateField>
       



    </Columns>
  </asp:GridView>
  <asp:Button ID="RemoveProduct" runat="server" 
    Text="Remove From Basket" OnClick="RemoveProduct_Click" />
  &nbsp;&nbsp;&nbsp;&nbsp;
  <asp:Button ID="ConfirmPurchase" runat="server" Text="Confirm Purchase" OnClick="ConfirmPurchase_Click" />
  <asp:SqlDataSource ID="BasketData" runat="server" 
    ConnectionString="<%$ ConnectionStrings:OnLineShoppingConnectionString%>">
  </asp:SqlDataSource>
    </div>

</asp:Content>
