using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineShopping.DataLayer
{
    class DataAccess
    {
        public static string ConnectionString
        {
            get 
            {
                return ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString.ToString();
            }

        } 
        public static SqlParameter AddParameter(string ParameterName,object value,SqlDbType DBtType,int size)
        
        {
            SqlParameter Param1 = new SqlParameter();
            Param1.ParameterName = ParameterName;
            Param1.Value = value.ToString();
            Param1.SqlDbType = DBtType;
            Param1.Size = size;
            Param1.Direction = ParameterDirection.Input;
            return Param1;
        }
        public static DataTable GetTable(string ProcedureName,SqlParameter[] paramters)
    
        { 
           SqlConnection MyCon=new SqlConnection(ConnectionString);
           SqlCommand cmd=new SqlCommand();
           cmd.Connection = MyCon;
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.CommandText = ProcedureName;
           cmd.Parameters.AddRange(paramters);
           SqlDataAdapter adp = new SqlDataAdapter(cmd);
           DataTable dt = new DataTable();
           adp.Fill(dt);
           return dt;


           

             
        }

    }
}
