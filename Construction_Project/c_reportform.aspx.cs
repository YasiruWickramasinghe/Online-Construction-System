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
    public partial class WebForm8 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button4.Visible = false;
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfEstimationExists())
            {
                try
                {

                    Session["estmid"] = TextBox2.Text;
                    Session["customername"] = TextBox3.Text;
                    Session["customeremail"] = TextBox4.Text;
                    Session["estimationdate"] = TextBox6.Text;
                    Response.Redirect("c_report.aspx");
                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }

            }
            else
            {

                Response.Write("<script>alert('Estimation ID Not found');</script>");

            }

            // Value sent using HttpResponse

        }


        bool checkIfEstimationExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Estimation where Est_ID='" + TextBox2.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }




    }


}