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
    public partial class profitCalculation : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //Organization Expenditure
        protected void Button8_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                if (string.IsNullOrEmpty(TextBox10.Text) || string.IsNullOrEmpty(TextBox11.Text))
                {
                    Response.Write("<script>alert('Input Valid Data Range');</script>");
                }

                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select * from OrganizationExpense where date between @date1 AND @date2", con);

                cmd.Parameters.AddWithValue("@date1", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@date2", TextBox11.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                // dt is datatable and by using Compute Property we are calculating Sum of Price Column
                TextBox8.Text = dt.Compute("Sum(amount)", "").ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }


        }




        //Permeent Expense
        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                if (string.IsNullOrEmpty(TextBox10.Text) || string.IsNullOrEmpty(TextBox11.Text))
                {
                    Response.Write("<script>alert('Input Valid Data Range');</script>");
                }

                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select * from empSalary where date between @date1 AND @date2", con);

                cmd.Parameters.AddWithValue("@date1", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@date2", TextBox11.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                // dt is datatable and by using Compute Property we are calculating Sum of Price Column
                TextBox2.Text = dt.Compute("Sum(netSalary)", "").ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }


        }






        //Customer Income
        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                if (string.IsNullOrEmpty(TextBox10.Text) || string.IsNullOrEmpty(TextBox11.Text))
                {
                    Response.Write("<script>alert('Input Valid Data Range');</script>");
                }

                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select sum(Total_LabourCost + Total_MaterialCost) as amount from Estimation where dates between @date1 AND @date2 AND Status='approved'", con);

                cmd.Parameters.AddWithValue("@date1", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@date2", TextBox11.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                // dt is datatable and by using Compute Property we are calculating Sum of Price Column
                TextBox3.Text = dt.Compute("Sum(amount)", "").ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }






        //Inventory Expense
        protected void Button4_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                if (string.IsNullOrEmpty(TextBox10.Text) || string.IsNullOrEmpty(TextBox11.Text))
                {
                    Response.Write("<script>alert('Input Valid Data Range');</script>");
                }

                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select * from Icc_damaged_items where Date_Recognized between @date1 AND @date2", con);

                cmd.Parameters.AddWithValue("@date1", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@date2", TextBox11.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                // dt is datatable and by using Compute Property we are calculating Sum of Price Column
                TextBox5.Text = dt.Compute("Sum(Cost)", "").ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }




        //Transport Expense
        protected void Button7_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                if (string.IsNullOrEmpty(TextBox10.Text) || string.IsNullOrEmpty(TextBox11.Text))
                {
                    Response.Write("<script>alert('Input Valid Data Range');</script>");
                }

                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select * from tr_payments where date between @date1 AND @date2", con);

                cmd.Parameters.AddWithValue("@date1", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@date2", TextBox11.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                // dt is datatable and by using Compute Property we are calculating Sum of Price Column
                TextBox7.Text = dt.Compute("Sum(amount)", "").ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }

        //Profit Calculate
        protected void Button9_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBox2.Text) || !string.IsNullOrEmpty(TextBox3.Text) || !string.IsNullOrEmpty(TextBox5.Text) || !string.IsNullOrEmpty(TextBox7.Text) || !string.IsNullOrEmpty(TextBox8.Text))

            {

                double a = double.Parse(TextBox3.Text) - (double.Parse(TextBox2.Text) + double.Parse(TextBox5.Text) + double.Parse(TextBox7.Text) + double.Parse(TextBox8.Text));

                TextBox9.Text = a.ToString();   //2 dcimal placs

            }

            else
            {
                Response.Write("<script>alert('Get all Values');</script>");
            }





            //Insert Profit to DB
            if (checkDateExists())
            {
                Response.Write("<script>alert('Already Submitted.');</script>");
                clearText();
            }
            else
            {
                InsertProfit();

            }



            bool checkDateExists()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from Profit where Date ='" + TextBox11.Text.Trim() + "';", con);

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



            void InsertProfit()
            {
                try
                {

                    SqlConnection con = new SqlConnection(strcon);


                    if (con.State == ConnectionState.Closed)
                    {

                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO Profit (Date, Expenses, Income,Profit) values (@Date, @Expense, @Income,@Profit)", con);

                    double b = double.Parse(TextBox2.Text) + double.Parse(TextBox5.Text) + double.Parse(TextBox7.Text) + double.Parse(TextBox8.Text);
                    double c = double.Parse(TextBox3.Text);
                    double d = c - b;


                    cmd.Parameters.AddWithValue("@Date", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@Expense", b);
                    cmd.Parameters.AddWithValue("@Income", c);
                    cmd.Parameters.AddWithValue("@Profit", d);

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('This Data is Stored Successfully');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }

            void clearText()
            {

                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox5.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";


            }


        }

        //Send data to another page
        protected void Button10_Click(object sender, EventArgs e)
        {

            Session.Add("income", TextBox3.Text);
            Session.Add("emp", TextBox2.Text);
            Session.Add("inventory", TextBox5.Text);
            Session.Add("transport", TextBox7.Text);
            Session.Add("tax", TextBox8.Text);

            Session.Add("profit", TextBox9.Text);
            Session.Add("sDate", TextBox10.Text);
            Session.Add("EDate", TextBox11.Text);

            Response.Redirect("incomeStatement.aspx");

            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
        }
    }
}