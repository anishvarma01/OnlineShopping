using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace OnlineShopping
{
    public partial class CheckOutMain : System.Web.UI.Page
    {
       

        int cost;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Cart"] == null)
                Response.Redirect("ShoppingCart.aspx");
            BindBasket();

        }
        protected void BindBasket()
        {
            var sql = "SELECT id, Name, Price FROM tblImages WHERE id IN ({0})";
            var values = (List<string>)Session["Cart"];
            if (values.Count > 0)
            {
                var parms = values.Select((s, i) => "@p" + i.ToString()).ToArray();
                var inclause = string.Join(",", parms);
                BasketData.SelectCommand = string.Format(sql, inclause);
                BasketData.SelectParameters.Clear();
                for (var i = 0; i < parms.Length; i++)
                {
                    BasketData.SelectParameters.Add(parms[i].Replace("@", ""), values[i]);
                }

                DataView view = (DataView)BasketData.Select(DataSourceSelectArguments.Empty);

                var costQuery = view.Cast<DataRowView>().Select(drv => drv.Row.Field<int>("Price"));
                cost = costQuery.Sum();
                Basket.DataSource = view;
                Basket.DataBind();
            }
        }
        protected void Basket_RowCreated(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Literal total = (Literal)e.Row.FindControl("TotalPrice");
                total.Text = cost.ToString("c");
            }
        }

        protected void RemoveProduct_Click(object sender, EventArgs e)
        {
            var cart = (List<string>)Session["Cart"];
            var removedProducts = Basket.Rows.Cast<GridViewRow>()
              .Where(row => ((CheckBox)row.FindControl("RemovedProducts")).Checked)
              .Select(row => Basket.DataKeys[row.RowIndex].Value.ToString()).ToList();
            cart.RemoveAll(removedProducts.Contains);
            BindBasket();
        }

        protected void ConfirmPurchase_Click(object sender, EventArgs e)
        {


            //            foreach (GridViewRow GVRow in Basket.Rows)
            //            {
            //                //  var   Name = GVRow.Cells[1].Text;
            //                var Name = GVRow.Cells[1].Text;
            //                //  TechnicalNo = GVRow.Cells[3].Text;

            //               // int Id = 1;
            //                int price = 300;
            //                string cs = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            //                SqlConnection con = new SqlConnection(cs);
            //                // SqlConnection scn = new SqlConnection(clspublic.GetConnectionString());
            //                using (con)
            //                {
            //                    SqlCommand scm = new SqlCommand();
            //                    scm.Connection = con;
            //                    scm.CommandText = @"INSERT INTO Orders
            //                      (OrderId, Name, Price)
            //           VALUES     (@OrderId,@Name,@Price)";

            //                    scm.Parameters.AddWithValue("@fName", Name.ToString());
            //                    scm.Parameters.AddWithValue("@OrderId", price.ToString());
            //                    scm.Parameters.AddWithValue("@Price", price.ToString());
            //                    // scm.Parameters.AddWithValue("@fxCarType", CarType.ToString());
            //                    // scm.Parameters.AddWithValue("@fTechnicalNo", TechnicalNo.ToString());


            //                    scm.ExecuteNonQuery();
            //                }















            Response.Redirect("ShippingInfoMain.aspx");
        }

    }
}