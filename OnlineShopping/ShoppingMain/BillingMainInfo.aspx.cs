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
    public partial class BillingMainInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_ddlCountry();
                for (int day = 1; day < 13; day++)
                {
                    Month.Items.Add(new ListItem(day.ToString()));
                }
                for (int year = 1990; year < 2016; year++)
                {
                    Year.Items.Add(new ListItem(year.ToString()));
                }
            } }


              public void Bind_ddlCountry()
        {

            string cs = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection MyCon = new SqlConnection(cs);
            MyCon.Open();
            SqlCommand cmd = new SqlCommand("select County,CountryId from Country", MyCon);
            SqlDataReader dr = cmd.ExecuteReader();
            ddlcountry.DataSource = dr;
            ddlcountry.Items.Clear();
            ddlcountry.Items.Add("--Please Select country--");
            ddlcountry.DataTextField = "County";
            ddlcountry.DataValueField = "CountryId";
            ddlcountry.DataBind();
            MyCon.Close();
        }

        //protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    Bind_ddlCity();
        //}
        public void Bind_ddlState()
        {
            string cs = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection MyCon = new SqlConnection(cs);
            MyCon.Open();

            SqlCommand cmd = new SqlCommand("select State,StateID from countryState where CountryId='" + ddlcountry.SelectedValue + "'", MyCon);

            SqlDataReader dr = cmd.ExecuteReader();
            ddlstate.DataSource = dr;
            ddlstate.Items.Clear();
            ddlstate.Items.Add("--Please Select state--");
            ddlstate.DataTextField = "State";
            ddlstate.DataValueField = "StateID";
            ddlstate.DataBind();
            MyCon.Close();
        }
        public void Bind_ddlCity()
        {
            string cs = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection conn = new SqlConnection(cs);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from stateCity where StateId ='" + ddlstate.SelectedValue + "'", conn);

            SqlDataReader dr = cmd.ExecuteReader();
            ddlcity.DataSource = dr;
            ddlcity.Items.Clear();
            ddlcity.Items.Add("--Please Select city--");
            ddlcity.DataTextField = "City";
            ddlcity.DataValueField = "CityID";
            ddlcity.DataBind();
            conn.Close();
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bind_ddlState();
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bind_ddlCity();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {


            lblMsg.Visible = true;
            lblMsg.Text = "Your order has been placed successfully";
        }

        }
    }
