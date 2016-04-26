using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace OnlineShopping.BusinessLayer
{
    class Cart
    {
        public string CategoryName;

        public string ProductName;
        public string ProductPrice;
        public string ProductDescript;
        public string ImageUrl;
        public int CategoryId;
        public int TotalProducts;
        

        //public int CategoryId;


        //public string PName;
        //public string PDescrip;
        //public string ImageUrl;
        //public string Price;
        public DataTable GetAllProdOnCategories()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@categoryId", CategoryId, System.Data.SqlDbType.Int, 200);
            DataTable dt = DataLayer.DataAccess.GetTable("SP_GetProductsById", parameters);
            return dt;


        }
        public void AddNewCategory()
        
        {
            SqlParameter[] Parameters = new SqlParameter[1];
           // Parameters[0] = DataLayer.DataAccess.AddParameter("@CategoryName", CategoryName);
          Parameters[0] = DataLayer.DataAccess.AddParameter("@CategoryName", CategoryName, System.Data.SqlDbType.VarChar, 200);
            DataTable dt = DataLayer.DataAccess.GetTable("SP_AddNewCategory", Parameters);

       }
        public void AddNewProduct()
        {
            SqlParameter[] Parameters = new SqlParameter[6];
            Parameters[0] = DataLayer.DataAccess.AddParameter("@Name", ProductName, System.Data.SqlDbType.VarChar, 200);
            Parameters[1] = DataLayer.DataAccess.AddParameter("@Description",ProductDescript,System.Data.SqlDbType.VarChar,200);
            Parameters[2] = DataLayer.DataAccess.AddParameter("@Price",ProductPrice,System.Data.SqlDbType.VarChar,200);
            Parameters[3] = DataLayer.DataAccess.AddParameter("@ImageUrl", ImageUrl, System.Data.SqlDbType.VarChar, 400);
            Parameters[4] = DataLayer.DataAccess.AddParameter("@CategoryId", CategoryId, System.Data.SqlDbType.Int,100);
            Parameters[5] = DataLayer.DataAccess.AddParameter("@ProductQuantity", TotalProducts, System.Data.SqlDbType.Int, 100);
            DataTable dt = DataLayer.DataAccess.GetTable("SP_AddNewProduct", Parameters);
        }

            public DataTable GetCategories()
        {
            SqlParameter[] Parameters =new SqlParameter[0];
      DataTable dt = DataLayer.DataAccess.GetTable("GetAllcategories",Parameters);
      return dt;



        }
    }
}
