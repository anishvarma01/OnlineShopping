<%@ Page Title="" Language="C#" MasterPageFile="~/Shopping.Master" AutoEventWireup="true" CodeBehind="ShoppingMain.aspx.cs" Inherits="OnlineShopping.ShoppingMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

     
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

        
      DataSourceID="ProductsData" EnableViewState="False" CellPadding="4" GridLines="None" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
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
          <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
     <%--   <asp:BoundField DataField="CName" HeaderText="Category" SortExpression="CategoryName" />--%>
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"
          DataFormatString="{0:c}" />
      </Columns>
      
        <EditRowStyle BackColor="#2461BF" />
      
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
       
    </asp:GridView>
    <asp:Button ID="AddToCart" runat="server"       Text="Select Products"  OnClick="AddToCart_Click" /> 
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Checkout" runat="server" Text="Check Out" OnClick="Checkout_Click" />
   
    
      <asp:SqlDataSource ID="ProductsData" runat="server" 
      ConnectionString="<%$ ConnectionStrings:OnLineShoppingConnectionString %>"
      SelectCommand="SELECT [id], [Name], [Price],[Description], [image] FROM [tblImages] WHERE ([categoryId] = @CategoryId)">
      <SelectParameters>
          <asp:ControlParameter ControlID="Categories"  Name="CategoryId" PropertyName="SelectedValue" Type="Int32" />
      </SelectParameters>
    </asp:SqlDataSource>



    </div>
         
</asp:Content>
