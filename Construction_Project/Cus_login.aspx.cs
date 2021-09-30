using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Construction_Project
{
    public partial class Cus_login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //database connectivity
            try
            {
                //perform the connection and pass the connection in the constructor
                SqlConnection con = new SqlConnection(strcon);

                //check whether the connection is closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE Username = '" + TextBox1.Text.Trim() + "' AND Password = '" + TextBox2.Text.Trim() + "'", con);

                //execute above query 
                SqlDataReader dr = cmd.ExecuteReader();

                //finding record

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful! Welcome " + dr.GetValue(6).ToString() + "');</script>");

                        //session varibles 

                        Session["Username"] = dr.GetValue(6).ToString();
                        Session["Name"] = dr.GetValue(0).ToString();
                        Session["role"] = "User";
                        Session["status"] = dr.GetValue(8).ToString();
                    }

                    Response.Redirect("SiteHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            //Response.Write("<script>alert('Button click!');</script>");
        }

    }
}