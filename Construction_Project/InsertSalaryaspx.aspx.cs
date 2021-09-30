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
    public partial class InsertSalaryaspx : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Insert Button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIDnoExists())
            {
                getEmpDetails();
            }

            else
            {
                Response.Write("<script>alert('ID not Exists');</script>");
            }
        }


        void getEmpDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Permanent_Employee where EmployeeID='" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][6].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Bill No');</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }









        bool checkIDnoExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Permanent_Employee where EmployeeID='" + TextBox1.Text.Trim() + "';", con);

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




        void InsertSalary()
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);


                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Insert into empSalary (empID,empName,designation,basicSalary,allowance,deduction,netSalary,date) values (@empID,@empName,@designation,@basicSalary,@allowance,@deduction,@netSalary,@date)", con);

                cmd.Parameters.AddWithValue("@empID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@empName", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@designation", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@basicSalary", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@allowance", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@deduction", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@netSalary", TextBox8.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Updated Successfully');</script>");

                clearText();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }

        void clearText()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";


        }















        //Calculate

        protected void Button2_Click(object sender, EventArgs e)
        {
            {
                if (!string.IsNullOrEmpty(TextBox1.Text) || !string.IsNullOrEmpty(TextBox2.Text) || !string.IsNullOrEmpty(TextBox3.Text) || !string.IsNullOrEmpty(TextBox5.Text) || !string.IsNullOrEmpty(TextBox6.Text) || !string.IsNullOrEmpty(TextBox7.Text) || !string.IsNullOrEmpty(TextBox8.Text))

                {

                    double a = (double.Parse(TextBox5.Text) + double.Parse(TextBox6.Text)) - double.Parse(TextBox7.Text);

                    TextBox8.Text = a.ToString();   //2 dcimal placs

                }

                else
                {
                    Response.Write("<script>alert('Get all Values');</script>");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            InsertSalary();
        }
    }
}