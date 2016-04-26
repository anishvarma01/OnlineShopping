<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main1New.aspx.cs" Inherits="OnlineShopping.Main1New" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server">

        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table align="center" class="style1">
                    
                      
            
                                <caption>
                                 <%--   main table 1st tr--%>
                                    <tr>
                                        <td>
                                            <table align="center" class="style1" style="border-bottom-style:ridge; border-width:medium;border-color:blue">
                                                <tr>
                                                    <td align="center" class="style8">
                                                        <%--<asp:Image ID="Image1" runat="server" Height="72px" ImageUrl="~/Admin/Images/Heart.jpg" Width="53px" />--%>
                                                    </td>
                                                    <td class="style6"><%-- linkshppingbtn--%>
                                                        <asp:LinkButton ID="lnkButton" runat="server" Font-Names="Eras Demi ITC" Font-Size="20pt" ForeColor="Blue" OnClick="lnkButton_Click" Text="Shopping">  
                                                        shopping at ease !!</asp:LinkButton>
                                                      
                                                      
                                                    </td>
                                                    <td class="style7" rowspan="2">
                                                        <%--<asp:Image ID="Image2" runat="server" Height="67px" ImageUrl="~/Admin/Images/1.jpg" Width="282px" />--%>
                                                    </td>
                                                    <td align="right" rowspan="2">
                                                        <asp:Image ID="Image3" runat="server" Height="53px" ImageUrl="~/Admin/Images/CartImage.png" Width="70px" />
                                                    </td>
                                                    <td align="left"><%--btnshopppingheart--%>
                                                        <asp:LinkButton ID="lnkbtnImgcounter" runat="server" Font-Size="20pt" Font-Underline="false" ForeColor="Blue" OnClick="lnkbtnImgcounter_Click">0</asp:LinkButton>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3" valign="middle">&nbsp; </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table align="center" class="style1" style="border:thin ridge blue">
                                                <tr>
                                                    <td class="style2">
                                                        <asp:Label ID="lblCategoryName" runat="server" Font-Size="15pt" ForeColor="Blue" Text="Label"></asp:Label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" Font-Size="15pt"  NavigateUrl="~/Search.aspx">EasySearch</asp:HyperLink>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        
                                                    </td>
                                                    <td class="style3" style="border-left-style:ridge; border-width:thin;border-color:green">
                                                        <asp:Label ID="lblProducts" runat="server" Font-Size="15pt" ForeColor="Green" Text="Products"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> 
                                            <table align="center" class="style1">
                                                <tr>
                                                    <td class="style2" valign="top">



           <asp:Panel ID="Panel1Prodcucts" runat="server" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" Height="500px" ScrollBars="Auto">





               



                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" BackColor="White" BorderColor="#3366CC" 
                     BorderWidth="1px" 
                               
                    >
                   <%-- OnRowDataBound="GridView1_RowDataBound"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged1"--%>
            <Columns>
               
               
                <asp:TemplateField HeaderText="Add To Cart">
          <ItemTemplate>
            <asp:CheckBox ID="SelectedProducts" runat="server" />
          </ItemTemplate>
        </asp:TemplateField>





                
                 <asp:TemplateField HeaderText="id">


           <ItemTemplate >

               <asp:Label ID="Label6" runat="server" Text='<%# Eval("id") %>' >
                   </asp:Label>
               

           </ItemTemplate>
           </asp:TemplateField>

                <asp:TemplateField HeaderText="Name">
           <ItemTemplate >
               <asp:Label ID="Label5" runat="server" Text='<%# Eval("Name") %>' >
		</asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
                  <asp:TemplateField HeaderText="Price">
           <ItemTemplate >
               <asp:Label ID="Label7" runat="server" Text='<%# Bind("Price") %>' >
		</asp:Label>
           </ItemTemplate>
           </asp:TemplateField>

                <asp:TemplateField HeaderText="Image">                   
                        <ItemTemplate>
                            <asp:Image ID="imgPreview" ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("image")) %>' runat="server"
                                Height="80px" Width="80px" />
                        </ItemTemplate>
                    </asp:TemplateField>
              
                 <asp:ButtonField Text="Click" CommandName="Select" ItemStyle-Width="30"  />


               
           </Columns>

          
        </asp:GridView>

                 <asp:Button ID="AddToCart" runat="server" Text="Select Products"  OnClick="AddToCart_Click" /> 
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Checkout" runat="server" Text="Check Out" OnClick="Checkout_Click" />




               <asp:Label ID="Label1" runat="server" ></asp:Label>







           <%--new code--%>

             
              


           

               
               
              


           

               
               
                    <%-- <asp:DataList ID="DataList1Products"
                                                                
     runat="server" Font-Bold="false" Font-Italic="false" Font-Overline="false" Font-Strikeout="false"
                            Font-Underline="false" RepeatColumns="3" width="600px" OnSelectedIndexChanged="DataList1Products_SelectedIndexChanged">
                                                                <ItemTemplate>
                                                                    <div align="left">
                                                                        <table cellspacing="1" class="style4" style="border:1px ridge red;">
                                                                            <tr>
                                                                           <td style="border-bottom-style:ridge; border-width:1px;border-color:red">
                                   <asp:Label ID="lblProductName" runat="server" Font-Size="Medium" Text='<%# Eval("Name") %>'></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                        
                  <asp:Image  runat="server" Width="210px" ID="imagePhotoPrd" Height="200px" ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("image")) %>' />


                                                                                
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                  Price:<asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price") %>'></asp:Label></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                              <asp:Button ID="btnAddToCart" runat="server" CommandArgument='<% #Bind("ProductId") %>' OnClick="btnAddToCart_Click"
                                   Text="Add To Cart" Width="100%" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                </ItemTemplate>
                                                            </asp:DataList>--%>




                                                        </asp:Panel>









                                                        <asp:Panel ID="Panel2Cart" runat="server">
                                                        </asp:Panel>

                                                    </td>
                                                    <td class="style3" valign="top" align="center">
                                                        <asp:Panel ID="pnlcategories" ScrollBars="Auto" Height="500px" BorderColor="Black"
                                                           BorderStyle="Inset" BorderWidth="1px"   runat="server">

                                                            <asp:DataList ID="dlcategories" BackColor="white" BorderColor="Blue" 
                                                                 BorderStyle="None"  BorderWidth="1px" CellPadding="4"  ForeColor="Black"
                                                             GridLines="Horizontal"  Width="252px"      runat="server">
                                                    
                                                                <FooterStyle BackColor="Blue"  ForeColor="Black"   />
                                                                <HeaderStyle BackColor="Tomato"   Font-Bold="true" ForeColor="White" />
                                                                <ItemTemplate>
                                                                    <asp:LinkButton ID="lbtncategory" runat="server" 
                                                                          Text='<%# Bind("CategoryName") %>' OnClick="lbtncategory_Click"
                                                                         CommandArgument='<%# Bind("CategoryId") %>'

></asp:LinkButton>
                                                                </ItemTemplate>
                                                                <SelectedItemStyle BackColor="Blue"  Font-Bold="true"  ForeColor="White" />




                                                            </asp:DataList>


                                                        </asp:Panel>
                                                        <asp:Panel ID="pnlcheckout" runat="server"></asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">

                                                        <asp:Panel ID="ECart" runat="server" Visible="false">
                                                            <div style="text-align:center;"></div>
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                               <asp:Image ID="Image4" runat="server" Width="500px" ImageUrl="~/Admin/Images/ProductImages/ECart.jpg" />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                           
                                                          

                                                        </asp:Panel>
                                                        <asp:Panel ID="Panel2" runat="server" Visible="False">
                                                            <div style="text-align:center">
                                                                <br />
                                                                <asp:Image ID="Keepcalm" runat="server"  ImageUrl="~/Admin/Images/keepCalm.png" Width="500px"/>
                                                                <br />
                                                                <label>
                                                                    THE ORDER PLACED SUCCEDFULLY..!!
                                                                   
                                                                </label>
                                                                <br />
                                                                THE ORDER DETAILS WILL BE MAILED TO YOU SHORTLY ..!!
                                                                <br />
                                                                <asp:Label ID="lblTransaction" runat="server"  ></asp:Label>
                                                                <br />
                                                                <br />
                                                                <a href="TrackYourOrder"  target="_blank">TRACK YOUR ORDER DETAILS HERE</a>
                                                            </div>

                                                        </asp:Panel>
                                                        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="border:thin ridge blue">© <a href="http://Naveen&Adduri.com">Naveen&amp;Adduri</a>||<a href="Admin/LogIn.aspx">Admin</a> </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </caption>
                          
                       

                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
   <%-- <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:ButtonField Text="AddToCart" />

                <asp:TemplateField HeaderText="Name">
           <ItemTemplate >
               <asp:Label ID="Label6" runat="server" Text='<%# Eval("Name") %>' >
		</asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
                  <asp:TemplateField HeaderText="Price">
           <ItemTemplate >
               <asp:Label ID="Label6" runat="server" Text='<%# Bind("Price") %>' >
		</asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
                <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                </asp:ImageField>
            </Columns>

            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

        </asp:GridView>
    </div>--%>
    </form>
</body>
</html>
