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
    public partial class Cus_profile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //go button
        protected void Button2_Click(object sender, EventArgs e)
        {
            getMember();
        }
        //active button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            UpdateMemberStatus("active");
        }
        //pause button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            UpdateMemberStatus("pending");
        }
        //deactive button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            UpdateMemberStatus("deactive");
        }

        //user define function
        void getMember()
        {
            try
            {
                //perform the connection and pass the connection in the constructor
                SqlConnection con = new SqlConnection(strcon);

                //check whether the connection is closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE NIC = '" + TextBox9.Text.Trim() + "'", con);

                //execute above query 
                SqlDataReader dr = cmd.ExecuteReader();

                //finding record

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox1.Text = dr.GetValue(0).ToString();
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox6.Text = dr.GetValue(3).ToString();
                        TextBox9.Text = dr.GetValue(4).ToString();
                        TextBox8.Text = dr.GetValue(5).ToString();
                        TextBox4.Text = dr.GetValue(6).ToString();
                        TextBox5.Text = dr.GetValue(7).ToString();
                        TextBox7.Text = dr.GetValue(8).ToString();
                    }
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
        }


        void UpdateMemberStatus(string status)
        {
            try
            {
                //perform the connection and pass the connection in the constructor
                SqlConnection con = new SqlConnection(strcon);

                //check whether the connection is closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Customer SET Account_status='" + status + "' WHERE NIC='" + TextBox9.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Account status successfully updated!!!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}