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
    public partial class tr_insert_vehicles : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Insert button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfVehicleIdExists())
            {
                Response.Write("<script>alert('This Vehicle ID is already exists.');</script>");

            }
            else
            {
                Insertvehicles();
                Response.Redirect("tr_vehicle.aspx");
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

        //add new transport function
        void Insertvehicles()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO tr_vehicle(vehicle_id,vehicle_number,color,transmission,type) values(@vehicle_id,@vehicle_number,@color,@transmission,@type)", con);

                cmd.Parameters.AddWithValue("@vehicle_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@vehicle_number", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@color", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@transmission", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.Value);
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
            DropDownList2.SelectedValue = "Select";
            DropDownList1.SelectedValue = "Select";
            TextBox8.Text = "";
            TextBox9.Text = "";
        }

        protected void Demo_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "VE100";
            TextBox2.Text = "AAB-6848";
            TextBox3.Text = "White";
            DropDownList2.SelectedValue = "Auto";
            DropDownList1.SelectedValue = "Bus";
            TextBox8.Text = "8750000";
        }
    }
}