using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineShopping.BusinessLayer;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace OnlineShopping
{
    public partial class ProductNewMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCategories();
            }
        }
        public static string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString.ToString();
            }

        } 


          public void GetCategories()
        {
            Cart c = new Cart();
            DataTable dt = c.GetCategories();
            if (dt.Rows.Count > 0)
            {
                ddlprdCategory.DataValueField = "CategoryId";
                ddlprdCategory.DataTextField = "CategoryName";
                ddlprdCategory.DataSource = dt;
                ddlprdCategory.DataBind();

            }
            //   c.GetCategories();

        }

        private void SavePrdPhoto()
        {

            if (uploadprdimage.PostedFile != null)
            {
                string FName = uploadprdimage.PostedFile.FileName.ToString();
                string FExtension = System.IO.Path.GetExtension(uploadprdimage.FileName);
                if (FName.Length > 50)
                {
                    Console.WriteLine("FileName should not exceed more than 50");

                }
                else if (FExtension != ".jpeg" && FExtension != ".png" && FExtension != ".jpg")
                {
                    Console.WriteLine("The Image should be in correct format");
                }
                else if (uploadprdimage.PostedFile.ContentLength > 60000)
                {
                    Console.WriteLine("The image file should not exceed more than 6MB");
                }


                else
                {
                    uploadprdimage.SaveAs(Server.MapPath("~/ProductImages/" + FName));
                    // uploadPrdImage.SaveAs(Server.MapPath(@"~\ProductImages\" + FName));
                }
            }
        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            if (uploadprdimage.HasFile)
            //  if (uploadprdimage.PostedFile != null)
            {
                //  SavePrdPhoto();
                //new code



                HttpPostedFile filePosted = uploadprdimage.PostedFile;
                string fileName = Path.GetFileName(filePosted.FileName);
                //   string file = Path.GetFileName(fileName);
                string fileExt = Path.GetExtension(fileName);
                Stream stream = filePosted.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                string cs = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("[spLoadImage]", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter paramN = new SqlParameter()
                    {
                        ParameterName = "@Name",
                        Value = txtPrdName.Text

                    };
                    int catId = Convert.ToInt32(ddlprdCategory.SelectedValue);
                    int TotalProducts = Convert.ToInt32(txtQuantity.Text);
                    cmd.Parameters.Add(paramN);


                    SqlParameter paramIm = new SqlParameter()
                    {
                        ParameterName = "@image",
                        Value = bytes

                    };
                    cmd.Parameters.Add(paramIm);
                    SqlParameter paramId = new SqlParameter()
                    {
                        ParameterName = "@NewId",
                        Value = -1,
                        Direction = ParameterDirection.Output

                    };
                    cmd.Parameters.Add(paramId);

                  
                    SqlParameter prdId = new SqlParameter()
                    {
                        ParameterName = "@ProductId",
                        Value = 2,
                      

                    };

                    cmd.Parameters.Add(prdId);
                    SqlParameter paramds = new SqlParameter()
                    {
                        ParameterName = "@Description",
                        Value = txtProdDescrip.Text

                    };
                    cmd.Parameters.Add(paramds);

                    SqlParameter paramprice = new SqlParameter()
                    {
                        ParameterName = "@Price",
                        Value = txtPrice.Text

                    };
                    cmd.Parameters.Add(paramprice);

                    SqlParameter catdi = new SqlParameter()
                    {
                        ParameterName = "@categoryId",
                        Value = catId

                    };
                    cmd.Parameters.Add(catdi);



                    SqlParameter prdQuant = new SqlParameter()
                    {
                        ParameterName = "@ProductQuantity",
                        Value = TotalProducts

                    };
                    cmd.Parameters.Add(prdQuant);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                  


                }
            }

        }

    }
}