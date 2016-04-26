using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineShopping.BusinessLayer;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace OnlineShopping
{
    public partial class Main1New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCategories();
                GetProducts(0);



            }

        }



        protected void lnkButton_Click(object sender, EventArgs e)
        {

        }

        protected void lnkbtnImgcounter_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

        }


        private void GetCategories()
        {
            Cart C = new Cart();
            dlcategories.DataSource = null;
            dlcategories.DataSource = C.GetCategories();
            dlcategories.DataBind();


        }
        private void GetProducts(int CategoryId)
        {
            Cart c = new Cart()
            {
                CategoryId = CategoryId
            };
            //DataList1Products.DataSource = null;
            //DataList1Products.DataSource = c.GetAllProdOnCategories();
            //DataList1Products.DataBind();
            GridView1.DataSource = null;
            GridView1.DataSource = c.GetAllProdOnCategories();
            GridView1.DataBind();

        }
        //}
        protected void lbtncategory_Click(object sender, EventArgs e)
        {
            pnlcategories.Visible = false;
            Panel1Prodcucts.Visible = true;
            int CategoryId = Convert.ToInt16((((LinkButton)sender).CommandArgument));
            GetProducts(CategoryId);

        }



        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='aquamarine';";
        //        e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='white';";
        //        e.Row.ToolTip = "Click last column for selecting this row.";
        //    }
        //}


        //protected void AddToCart_Click(object sender, EventArgs e)
        //  {
        //    var selectedProducts = GridView1.Rows.Cast<GridViewRow>()
        //      .Where(row => ((CheckBox)row.FindControl("SelectedProducts")).Checked)
        //      .Select(row => GridView1.DataKeys[row.RowIndex].Value.ToString()).ToList();
        //    if (Session["Cart"] == null)
        //    {
        //        Session["Cart"] = selectedProducts;
        //    }
        //    else
        //    {
        //        var cart = (List<string>)Session["Cart"];
        //        foreach (var product in selectedProducts)
        //            cart.Add(product);
        //        Session["Cart"] = cart;
        //    }
        //    foreach (GridViewRow row in GridView1.Rows)
        //    {
        //        CheckBox cb = (CheckBox)row.FindControl("SelectedProducts");
        //        if (cb.Checked)
        //            cb.Checked = false;
        //    }
        //}


        protected void Checkout_Click(object sender, EventArgs e)
        {
            if (Session["Cart"] != null)
                Response.Redirect("WebForm1.aspx");
        }




      

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            {
                var selectedProducts = GridView1.Rows.Cast<GridViewRow>()
                  .Where(row => ((CheckBox)row.FindControl("SelectedProducts")).Checked)
                  .Select(row => GridView1.DataKeys[row.RowIndex].Value.ToString()).ToList();
                if (Session["Cart"] == null)
                {
                    Session["Cart"] = selectedProducts;
                }
                else
                {
                    var cart = (List<string>)Session["Cart"];
                    foreach (var product in selectedProducts)
                        cart.Add(product);
                    Session["Cart"] = cart;
                }
                foreach (GridViewRow row in GridView1.Rows)
                {
                    CheckBox cb = (CheckBox)row.FindControl("SelectedProducts");
                    if (cb.Checked)
                        cb.Checked = false;
                }
            }
        }
    }
}
        
