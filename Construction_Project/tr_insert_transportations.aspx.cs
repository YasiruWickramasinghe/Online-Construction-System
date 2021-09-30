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
    public partial class tr_insert_transportations : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //real time data hadle
            //GridView1.DataBind();
        }

        //Insert button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfTransportIdExists())
            {
                Response.Write("<script>alert('This Transport ID is already exists.');</script>");

            }

            
            else if (checkIfVehicleIdExists() && checkIfDriverIdExists())
            {
                InsertTransportation();
                Response.Redirect("tr_transportations.aspx");
            }
            /*
            else if (!checkIfOrderIdExists())
            {
                Response.Write("<script>alert('This Oreder ID Does not exists. Check the IDs');</script>");
            }
            */

            else if (!checkIfVehicleIdExists())
            {
                Response.Write("<script>alert('This Vehicle ID Does not exists. Check the IDs');</script>");
            }
            else if (!checkIfDriverIdExists())
            {
                Response.Write("<script>alert('This Driver ID Does not exists. Check the IDs');</script>");
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

        //check if Vehicle ID Already Exists
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


        //add new transport function
        void InsertTransportation()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO tr_transportation(transport_id,order_id,start_point,end_point,material,material_size,driver_id,vehicle_id,date) values(@transport_id,@order_id,@start_point,@end_point,@material,@material_size,@driver_id,@vehicle_id,@date)", con);

                cmd.Parameters.AddWithValue("@transport_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@order_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@start_point", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@end_point", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@material", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@material_size", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@driver_id", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@vehicle_id", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox9.Text.Trim());
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("INSERT INTO tr_payments(transport_id,amount,date) values(@transport_id,@amount,@date)", con);

                cmd2.Parameters.AddWithValue("@transport_id", TextBox1.Text.Trim());
                cmd2.Parameters.AddWithValue("@amount", TextBox8.Text.Trim());
                cmd2.Parameters.AddWithValue("@date", TextBox9.Text.Trim());
                cmd2.ExecuteNonQuery();


                con.Close();
                Response.Write("<script>alert('NEW TRANSPORTATION HAS BEEN ADDED SCCESSFULLY');</script>");
                //clear placeholders after Inserted
                ClearPlaceHolders();
                //real time data hadle
                //GridView1.DataBind();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("tr_vehicle.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("tr_drivers.aspx");
        }

        protected void Demo_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "TR5000";
            TextBox2.Text = "OR5000";
            TextBox3.Text = "Matara";
            TextBox4.Text = "Colombo";
            DropDownList1.SelectedValue = "Stone";
            TextBox5.Text = "15";
            TextBox6.Text = "DR001";
            TextBox7.Text = "VE001";
            TextBox8.Text = "1560000";

        }
    }
}