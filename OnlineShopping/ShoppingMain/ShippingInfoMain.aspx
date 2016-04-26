<%@ Page Title="" Language="C#" MasterPageFile="~/Shopping.Master" AutoEventWireup="true" CodeBehind="ShippingInfoMain.aspx.cs" Inherits="OnlineShopping.ShippingInfoMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div>
     <h3>Shipping Address</h3>
        <table>
            <tr>
                <td>
             Deliver To
            </td>
                  <td>
                      <asp:TextBox ID="DeliverTo" runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>
                <td>
                    Street Adrress
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    ApartmentNo
                </td>
                <td>

                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                 <td>
                  Select Country
              </td>
              <td>
                   <asp:DropDownList ID="ddlcountry" AutoPostBack ="true" AppendDataBoundItems="true" runat="server" 
onselectedindexchanged="ddlcountry_SelectedIndexChanged"
                  >
           </asp:DropDownList>
            
                  </td>
            
            
            </tr>
            
             <tr>
              <td>
                  Select State
              </td>
             <td>
                 <asp:DropDownList ID="ddlstate" AutoPostBack ="true"
       AppendDataBoundItems ="true"  runat="server" 
               onselectedindexchanged="ddlstate_SelectedIndexChanged"
            >
      </asp:DropDownList>
             </td>
           
          </tr>
          <tr>
              <td>
                  Select City
              </td>
              <td>
                  <asp:DropDownList ID="ddlcity" AutoPostBack ="true"
   AppendDataBoundItems ="true" runat="server" >
     </asp:DropDownList>
              </td>
            


          </tr>
            <tr>
                <td>
                    EmailId
                </td>
                <td>
                    <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Phone No
                </td>
                <td>

                    <asp:TextBox ID="txtPhoneNo" runat="server"></asp:TextBox>
                </td>
            </tr>
              <tr>
                             <td>
                                 Shipping Mode
                             </td>
                             <td>
                                 <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                             </td>
                         </tr>


        <tr>
            <td>

            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Continue" OnClick="Button1_Click" />
            </td>
        </tr>  
        </table>

    </div>

</asp:Content>
