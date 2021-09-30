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
    public partial class UtilityForm : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //Insert Utility Bill
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkBillnoExists())
            {
                Response.Write("<script>alert('This Bill No is already exists.');</script>");
            }
            else
            {
                InsertBill();
            }

        }


        //check if bill no already Exists
        bool checkBillnoExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from OrganizationExpense where billNo='" + TextBox1.Text.Trim() + "';", con);

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




        void InsertBill()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);


                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO OrganizationExpense (billNo, billDescription, expenseType, date, amount) values (@billNo, @billDescription, @expenseType, @date, @amount)", con);


                cmd.Parameters.AddWithValue("@billNo", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@billDescription", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@expenseType", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@amount", TextBox5.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Inserted Successfully');</script>");

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
            TextBox4.Text = "";
            TextBox5.Text = "";
        }







    }
}


