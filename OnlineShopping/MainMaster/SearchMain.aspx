<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SearchMain.aspx.cs" Inherits="OnlineShopping.SearchMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
      <div>
    <asp:TextBox ID="txtSearch" runat="server" ></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
        <br />
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
<AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
            <Columns>
                <asp:TemplateField  HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name")%>'></asp:Label> 
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Description")%>'></asp:Label> 
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Price")%>'></asp:Label> 
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Image">
                    <ItemTemplate>
                      <asp:Image  runat="server" Width="210px" ID="imagePhotoPrd" Height="200px" ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("image")) %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    </div>
</asp:Content>
