<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="OnlineShopping.ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body  style="background-image:url('Admin/Images/Shpng.gif');background-size:1300px 600px;"  >
    <form id="form1" runat="server">
    <div>
         <p>
      Select Category:
      <asp:DropDownList ID="Categories" runat="server" DataSourceID="CategoriesData" 
        DataTextField="CategoryName" DataValueField="CategoryID" AutoPostBack="true" />
      <asp:SqlDataSource ID="CategoriesData" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OnLineShoppingConnectionString %>"
        SelectCommand="SELECT [CategoryId], [CategoryName] FROM [category]"></asp:SqlDataSource>
    </p>
    <asp:GridView ID="Products" runat="server" AutoGenerateColumns="False" DataKeyNames="id"

        
      DataSourceID="ProductsData" EnableViewState="False"
         BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
      <Columns>
        <asp:TemplateField HeaderText="Add To Cart">
          <ItemTemplate>
            <asp:CheckBox ID="SelectedProducts" runat="server" />
          </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Image">                   
                        <ItemTemplate>
                            <asp:Image ID="imgPreview" ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("image")) %>' runat="server"
                                Height="80px" Width="80px" />
                        </ItemTemplate>
                    </asp:TemplateField>
         
        <asp:BoundField DataField="Name" HeaderText="Product" SortExpression="ProductName" />
     <%--   <asp:BoundField DataField="CName" HeaderText="Category" SortExpression="CategoryName" />--%>
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"
          DataFormatString="{0:c}" />
      </Columns>
      
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
       
    </asp:GridView>
    <asp:Button ID="AddToCart" runat="server" Text="Select Products" OnClick="AddToCart_Click" /> 
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Checkout" runat="server" Text="Check Out" OnClick="Checkout_Click"/>
   
    
      <asp:SqlDataSource ID="ProductsData" runat="server" 
      ConnectionString="<%$ ConnectionStrings:OnLineShoppingConnectionString %>"
      SelectCommand="SELECT [id], [Name], [Price], [image] FROM [tblImages] WHERE ([categoryId] = @CategoryId)">
      <SelectParameters>
          <asp:ControlParameter ControlID="Categories"  Name="CategoryId" PropertyName="SelectedValue" Type="Int32" />
      </SelectParameters>
    </asp:SqlDataSource>



    </div>
    </form>
</body>
</html>
