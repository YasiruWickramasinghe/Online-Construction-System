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
    public partial class tr_delete_vehicles : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //delete button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfVehicleIdExists())
            {
                DeleteVehicle();
                Response.Redirect("tr_vehicle.aspx");
            }
            else
            {
                Response.Write("<script>alert('Vehicle ID is does not exists');</script>");
            }
        }
        //find button
        protected void Button1_Click(object sender, EventArgs e)
        {
            getVehicleById();
        }

        //user define function

        //check if transport ID already Exists
        bool checkIfVehicleIdExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from tr_vehicle where vehicle_id='" + TextBox1.Text.Trim() + "';", con);

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
        void DeleteVehicle()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM tr_vehicle WHERE vehicle_id='" + TextBox1.Text.Trim() + "'", con);
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
        void getVehicleById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tr_vehicle where vehicle_id='" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["vehicle_number"].ToString();
                    TextBox3.Text = dt.Rows[0]["color"].ToString();
                    DropDownList2.SelectedValue = dt.Rows[0]["transmission"].ToString().Trim();
                    DropDownList1.SelectedValue = dt.Rows[0]["type"].ToString().Trim();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Vehicle ID');</script>");
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
                    Response.Write("<script>alert('Invalid Vehicle ID');</script>");
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
            DropDownList2.SelectedValue = "Select";
            DropDownList1.SelectedValue = "Select";
            TextBox8.Text = "";
            TextBox9.Text = "";
        }
    }
}