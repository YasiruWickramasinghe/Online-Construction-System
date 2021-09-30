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
    public partial class RegistrationPage : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkEmployeeExists())
            {
                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
                clearData();
            }
            else
            {
                signUpNewEmployee();
            }
        }

        bool checkEmployeeExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Permanent_Employee WHERE userName = '" + TextBox7.Text + "';", con);
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

        void signUpNewEmployee()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Permanent_Employee(FirstName,LastName,DateOfBirth,ContactNumber,Email,Designation,Qualifications,userName,Password) " +
                    "VALUES('" + TextBox1.Text + "' ,'" + TextBox2.Text + "' , '" + TextBox3.Text + "' , '" + TextBox4.Text + "' , '" + TextBox5.Text + "' , '" + DropDownList1.SelectedItem.Value + "' , '" + TextBox6.Text + "' , '" + TextBox7.Text + "' , '" + TextBox8.Text + "')", con);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                clearData();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void clearData()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            DropDownList1.SelectedItem.Value = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }

    }
}