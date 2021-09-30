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
    public partial class tr_delete_transportations : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //real time data hadle
            //GridView1.DataBind();
        }
        //find button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getTransportById();
        }
        //delete button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfTransportIdExists())
            {
                DeleteTransportation();
                Response.Redirect("tr_transportations.aspx");
            }
            else
            {
                Response.Write("<script>alert('Transport ID is does not exists');</script>");
            }
        }


        //user define function

        //check if transport ID already Exists
        bool checkIfTransportIdExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from tr_transportation where transport_id='" + TextBox1.Text.Trim() + "';", con);

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


        //Delete transportation function
        void DeleteTransportation()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM tr_transportation WHERE transport_id='" + TextBox1.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("DELETE FROM tr_payments WHERE transport_id='" + TextBox1.Text.Trim() + "'", con);
                cmd2.ExecuteNonQuery();


                con.Close();
                Response.Write("<script>alert('TRANSPORTATION DELETED SCCESSFULLY');</script>");
                //clear placeholders after deleted
                ClearPlaceHolders();
                //real time data hadle
                //GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //Auto fill the placeholders by clicking find button
        void getTransportById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tr_transportation where transport_id='" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["order_id"].ToString();
                    TextBox3.Text = dt.Rows[0]["start_point"].ToString();
                    TextBox4.Text = dt.Rows[0]["end_point"].ToString();
                    DropDownList1.SelectedValue = dt.Rows[0]["material"].ToString().Trim();
                    TextBox5.Text = dt.Rows[0]["material_size"].ToString();
                    TextBox6.Text = dt.Rows[0]["driver_id"].ToString();
                    TextBox7.Text = dt.Rows[0]["vehicle_id"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Transport ID');</script>");
                }

                SqlCommand cmd2 = new SqlCommand("SELECT * from tr_payments where transport_id='" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                if (dt2.Rows.Count >= 1)
                {
                    TextBox8.Text = dt2.Rows[0]["amount"].ToString();
                    TextBox9.Text = dt2.Rows[0]["date"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Transport ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        //Clear form Placeholders after the action's
        void ClearPlaceHolders()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            DropDownList1.SelectedValue = "Select";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
        }
    }
}