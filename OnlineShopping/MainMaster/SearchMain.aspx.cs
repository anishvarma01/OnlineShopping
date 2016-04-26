using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineShopping
{
    public partial class SearchMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }





        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select *from tblImages where (Name like '%' + @search + '%')";
            string cs = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            // SqlCommand cd = new SqlCommand(str, cs);
            SqlConnection mycon = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand(str, mycon);
            cmd.Parameters.Add("@search", SqlDbType.NVarChar).Value = txtSearch.Text;
            mycon.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adp.Fill(ds, "Name");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            mycon.Close();
        }


    } 
}