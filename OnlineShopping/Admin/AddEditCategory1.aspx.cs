using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineShopping.BusinessLayer;

namespace OnlineShopping.Admin
{
    public partial class AddEditCategory1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
            Cart C = new Cart
            {
                CategoryName = txtCategoryName.Text
            };
            C.AddNewCategory();
            lblMsg.Visible = true;
            lblMsg.Text = "Successfull";
            Response.Redirect("~/Admin/AddNewProduct1.aspx");
        }

      
    }
}