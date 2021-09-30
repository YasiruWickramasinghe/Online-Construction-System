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
    public partial class EmployeeLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //sign in button pressed

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Permanent_Employee WHERE userName='" + TextBox1.Text + "' AND Password='" + TextBox2.Text + "' AND Designation= '" + DropDownList1.SelectedValue + "'", con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    while (sdr.Read())
                    {
                        Response.Write("<script> alert('Successful login as '" + sdr.GetValue(1).ToString() + "' '" + sdr.GetValue(2).ToString() + "''); </script>");
                        Session["username"] = sdr.GetValue(8).ToString();
                        Session["eid"] = sdr.GetValue(0).ToString();
                        Session["fname"] = sdr.GetValue(1).ToString();
                        Session["Lname"] = sdr.GetValue(2).ToString();
                        Session["role"] = sdr.GetValue(6).ToString();
                    }

                    if (Session["role"].Equals("Employee"))
                    {
                        Response.Redirect("P_EmployeeHomePage.aspx");
                    }
                    else if (Session["role"].Equals("HR Manager"))
                    {
                        Response.Redirect("HRHomePage.aspx");
                    }
                    else if (Session["role"].Equals("Accountant"))
                    {
                        Response.Redirect("FMdashboard.aspx");
                    }
                    else if(Session["role"].Equals("Site Supervisor"))
                    {
                        Response.Redirect("SiteSupervisorHome.aspx");
                    }
                    else if (Session["role"].Equals("Logistic Manager"))
                    {
                        Response.Redirect("tr_itp_home.aspx");
                    }
                    else if (Session["role"].Equals("Supplier Manager"))
                    {
                        Response.Redirect("suppliermanagerhome.aspx");
                    }
                    else if (Session["role"].Equals("Customer Affairs Manager"))
                    {
                        Response.Redirect("CAMhomepage.aspx");
                    }
                }
                else
                {
                    Response.Write("<script> alert('Invalid credentials'); </script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "'); </script>");
            }
        }
    }
}