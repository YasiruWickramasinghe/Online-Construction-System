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
    public partial class Cus_signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        // sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {

                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                signUpNewMember();
            }
        }

        // user defined method
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Customer where NIC='" + TextBox7.Text.Trim() + "';", con);

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
        void signUpNewMember()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Customer(Name,Address,ContactNo,Email,NIC,Customer_type,Username,Password,Account_status) values(@Name,@Address,@ContactNo,@Email,@NIC,@Customer_type,@Username,@Password,@Account_status)", con);


                cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@ContactNo", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@NIC", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Customer_type", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Username", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Account_status", "pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                clearForm();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

        }

    }
}