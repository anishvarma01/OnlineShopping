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
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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
            Console.WriteLine("Hi");

        }
        //private void GetProducts(int CategoryId)
        //{
        //    Cart c = new Cart() {CategoryId=CategoryId };
        //    DataTable dt = new DataTable();
        //    dt = c.GetAllProdOnCategories(CategoryId);
        // //   DataList1Products.DataSource = null;
        // //   DataList1Products.DataSource = c.GetAllProdOnCategories(CategoryId);
            
        //   // DataList1Products.DataSource = c.GetAllProdOnCategories(CategoryId);
        //    DataList1Products.DataBind();


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
                CategoryId=CategoryId
            };
            DataList1Products.DataSource = null;
            DataList1Products.DataSource = c.GetAllProdOnCategories();
            DataList1Products.DataBind();

        }
        //}
        protected void lbtncategory_Click(object sender, EventArgs e)
        {
            pnlcategories.Visible = false;
            Panel1Prodcucts.Visible = true;
            int CategoryId = Convert.ToInt16((((LinkButton)sender).CommandArgument));
           GetProducts(CategoryId);
        //    HighLightProducts();
        }

        protected void DataList1Products_SelectedIndexChanged(object sender, EventArgs e)
        {
           


        }

        //protected void TextBox1_TextChanged(object sender, EventArgs e)
        //{
        //    string str = "select *from products where (Name like '%' + @search + '%')";
        //    string cs = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        //   // SqlCommand cd = new SqlCommand(str, cs);
        //    SqlConnection mycon = new SqlConnection(cs);
        //    SqlCommand cmd = new SqlCommand(str, mycon);
        //    cmd.Parameters.Add("@search", SqlDbType.NVarChar).Value = txtSearch.Text;
        //    mycon.Open();
        //    cmd.ExecuteNonQuery();
        //    SqlDataAdapter adp = new SqlDataAdapter();
        //    adp.SelectCommand = cmd;
        //    DataSet ds = new DataSet();
        //    adp.Fill(ds, "Name");





        //}
    }
}