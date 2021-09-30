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
    public partial class tr_update_transportations : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //real time data hadle
            //GridView1.DataBind();
        }

        //Update button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfTransportIdExists() &&  checkIfVehicleIdExists() && checkIfDriverIdExists())
            {
                UpdateTransportation();
                Response.Redirect("tr_transportations.aspx");
            }
            else if (!checkIfTransportIdExists())
            {
                Response.Write("<script>alert('Transport ID does not exists');</script>");
            }
            /*
            else if (!checkIfOrderIdExists())
            {
                Response.Write("<script>alert('Order ID does not exists');</script>");
            }
            */
            else if (!checkIfVehicleIdExists())
            {
                Response.Write("<script>alert(' Vehicle ID does not exists');</script>");
            }
            else if (!checkIfDriverIdExists())
            {
                Response.Write("<script>alert('Driver ID does not exists');</script>");
            }

        }

        //find button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getTransportById();
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
        /*
        //check if Order ID Already Exists
        bool checkIfOrderIdExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from tr_orders where order_id='" + TextBox2.Text.Trim() + "';", con);

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
        */
        //check if Vehicle ID Not Exists
        bool checkIfVehicleIdExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from tr_vehicle where vehicle_id='" + TextBox7.Text.Trim() + "';", con);

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


        //check if Driver ID Not Exists
        bool checkIfDriverIdExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from tr_drivers where driver_id='" + TextBox6.Text.Trim() + "';", con);

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

        //Update transportation function
        void UpdateTransportation()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE tr_transportation SET order_id=@order_id, start_point=@start_point, end_point=@end_point, material=@material, material_size=@material_size, driver_id=@driver_id, vehicle_id=@vehicle_id, date=@date  WHERE transport_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@order_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@start_point", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@end_point", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@material", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@material_size", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@driver_id", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@vehicle_id", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox9.Text.Trim());
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("UPDATE tr_payments SET  amount=@amount, date=@date  WHERE transport_id='" + TextBox1.Text.Trim() + "'", con);

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

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("tr_drivers.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("tr_vehicle.aspx");
        }
    }
}