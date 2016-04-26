using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Configuration;

namespace OnlineShopping
{
    public partial class LogInMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string LoginID = WebConfigurationManager.AppSettings["AdminLoginId"];
            string Password = WebConfigurationManager.AppSettings["AdminPassword"];
            if (txtLogIn.Text == LoginID && txtPasswrd.Text == Password)
            {
                Session["OnlineShopping"] = "OnlineShopping";
                Response.Redirect("CategoryNewMain.aspx");

            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "The LogID/Password is Incorrect ..!!";
                txtLogIn.Text = "";
                txtPasswrd.Text = "";
            }
    }}
}