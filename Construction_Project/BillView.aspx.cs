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
    public partial class BillView : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }



        //Insert Button





        //Update button
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkBillnoExists())
            {
                updateBill();

            }
            else
            {
                Response.Write("<script>alert('This Bill No is Not in the Database.');</script>");
            }


        }




        //Delete Button
        protected void Button3_Click(object sender, EventArgs e)
        {

            if (checkBillnoExists())
            {
                deleteBill();

            }
            else
            {
                Response.Write("<script>alert('This Bill No is Not in the Database.');</script>");
            }


        }



        //get button
        protected void Button4_Click(object sender, EventArgs e)
        {
            getBillInformation();
        }








        //user Define Function

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




        //user Define Function




        //User Define Function
        void updateBill()
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);


                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Update OrganizationExpense SET billDescription=@billDescription,expenseType=@expenseType,date=@date, amount=@amount WHERE billNo= '" + TextBox1.Text.Trim() + "'", con);


                cmd.Parameters.AddWithValue("@billDescription", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@expenseType", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@amount", TextBox5.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Updated Successfully');</script>");

                clearText();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }




        //User Define Function
        void deleteBill()
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);


                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from OrganizationExpense where billNo= '" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Deleted Successfully');</script>");

                clearText();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }


        }


        //user Define Function
        void getBillInformation()
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
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][2].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    TextBox5.Text = dt.Rows[0][4].ToString();
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







        //user Define Function

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