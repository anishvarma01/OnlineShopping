<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="OnlineShopping.SCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body   style="background-image:url('Admin/Images/Shpng.gif');background-size:1300px 600px;" >
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
