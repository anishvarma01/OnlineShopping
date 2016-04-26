using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.Admin
{
    public partial class LoginDynamic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile != null)
            {
                string FileName = FileUpload1.PostedFile.FileName.ToString();
                string FExtnsion = System.IO.Path.GetExtension(FileUpload1.FileName);
              //  FileUpload1.SaveAs(Server.MapPath(@"~/ProductImages/" + FileName));
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".")+"Uploads"+FileName);
            }
        }
    }
}