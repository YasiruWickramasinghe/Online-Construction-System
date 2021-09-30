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
    public partial class tr_update_vehicles : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //find button
        protected void Button1_Click(object sender, EventArgs e)
        {
            getVehicleById();
        }
        //update button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfVehicleIdExists())
            {
                UpdateVehicle();
                Response.Redirect("tr_vehicle.aspx");
            }
            else
            {
                Response.Write("<script>alert('VEhicle ID is does not exists');</script>");
            }

        }

        //user define function

        //check if vehicle ID already Exists
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

        //Update Vehicle function
        void UpdateVehicle()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE tr_vehicle SET vehicle_id=@vehicle_id, vehicle_number=@vehicle_number, color=@color, transmission=@transmission, type=@type  WHERE vehicle_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@vehicle_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@vehicle_number", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@color", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@transmission", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.Value);
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("UPDATE tr_payments SET  amount=@amount, date=@date  WHERE transport_id='" + TextBox1.Text.Trim() + "'", con);

                cmd2.Parameters.AddWithValue("@transport_id", TextBox1.Text.Trim());
                cmd2.Parameters.AddWithValue("@amount", TextBox8.Text.Trim());
                cmd2.Parameters.AddWithValue("@date", TextBox9.Text.Trim());
                cmd2.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('TRANSPORTATION UPDATED SCCESSFULLY');</script>");
                //clear placeholders after updated
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