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
    public partial class EmployeeProfile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                getEmployeeData();

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('Session Expired Login Again'); </script>");
                Response.Redirect("EmployeeLogin.aspx");
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            updateEmployeeDetails();
        }

        void getEmployeeData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Permanent_Employee WHERE userName = '" + Session["username"].ToString() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["FirstName"].ToString();
                TextBox2.Text = dt.Rows[0]["LastName"].ToString();
                TextBox3.Text = dt.Rows[0]["DateOfBirth"].ToString();
                TextBox4.Text = dt.Rows[0]["ContactNumber"].ToString();
                TextBox5.Text = dt.Rows[0]["Email"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["Designation"].ToString().Trim();
                TextBox6.Text = dt.Rows[0]["Qualifications"].ToString();
                TextBox7.Text = dt.Rows[0]["userName"].ToString();
                TextBox8.Text = dt.Rows[0]["Password"].ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateEmployeeDetails()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Permanent_Employee " +
                    "SET FirstName = '" + TextBox1.Text + "' , LastName = '" + TextBox2.Text + "' , DateOfBirth = '" + TextBox3.Text + "' , ContactNumber = '" + TextBox4.Text + "' , " +
                    "Email = '" + TextBox5.Text + "' , Qualifications = '" + TextBox6.Text + "' , Password = '" + TextBox8.Text + "' " +
                    "WHERE userName = '" + Session["username"].ToString() + "'", con);

                int result = cmd.ExecuteNonQuery();
                con.Close();

                if (result > 0)
                {
                    Response.Write("<script> alert('Your Details Updated Successfully'); </script>");
                    getEmployeeData();
                }
                else
                {
                    Response.Write("<script> alert('Invalid entry'); </script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "'); </script>");
            }
        }

    }
}