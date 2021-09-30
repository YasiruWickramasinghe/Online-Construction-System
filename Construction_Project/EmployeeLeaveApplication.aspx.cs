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
    public partial class EmployeeLeaveApplication : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            getEmployeeData();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            applyLeave();
        }

        bool applyLeave()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Employee_Leave(LeaveType,StartingDate,NoOfDates,Eid)" +
                    "VALUES('" + RadioButtonList1.SelectedValue + "' , '" + TextBox4.Text + "' , '" + TextBox5.Text + "' , '" + TextBox.Text + "') " +
                    "SELECT EmployeeID FROM Permanent_Employee WHERE userName = '" + Session["username"] + "'", con);

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
                Response.Write("<script> alert('" + ex.Message + "'); </script>");
                return false;
            }
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

                SqlCommand cmd = new SqlCommand("SELECT * FROM Permanent_Employee WHERE userName = '" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox.Text = dt.Rows[0]["EmployeeID"].ToString();
                TextBox1.Text = dt.Rows[0]["FirstName"].ToString();
                TextBox2.Text = dt.Rows[0]["LastName"].ToString();
                TextBox3.Text = dt.Rows[0]["Designation"].ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "'); </script>");
            }
        }
    }
}