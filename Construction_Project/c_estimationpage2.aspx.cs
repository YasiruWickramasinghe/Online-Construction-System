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
    public partial class WebForm3 : System.Web.UI.Page
    {
        DataTable dt;
        DataTable dt1;
        double totalprice;
        double totalamount;
        string totp;


        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["estmid"] != null)
            {



                TextBox5.Text = (string)Session["estmid"];


            }

            if (Session["tid"] != null)
            {



                TextBox6.Text = (string)Session["tid"];


            }

            if (Session["location"] != null)
            {



                TextBox7.Text = (string)Session["location"];


            }




            if (!IsPostBack)
            {
                Button2.Visible = false;

                dt = new DataTable();
                dt.Columns.Add("lrid");
                dt.Columns.Add("labourrole");
                dt.Columns.Add("salaryperday");
                dt.Columns.Add("noofdays");
                dt.Columns.Add("noofworkers");
                dt.Columns.Add("amount");
                Session["data"] = dt;
                TextBox2.Text = "";





            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfEstimationExists() == false)
            {
                try
                {
                    if (checkEstimationID() == true)
                    {
                        try
                        {

                            Button2.Visible = true;

                            dt = (DataTable)Session["data"];
                            DataRow dr;
                            dr = dt.NewRow();
                            if (dt.Rows.Count > 0)
                            {
                                dr["lrid"] = TextBox2.Text;
                                dr["labourrole"] = TextBox1.Text;
                                dr["salaryperday"] = TextBox3.Text;
                                dr["noofdays"] = TextBox4.Text;
                                dr["noofworkers"] = TextBox8.Text;
                                totalprice = Convert.ToDouble(TextBox3.Text) * Convert.ToDouble(TextBox4.Text) * Convert.ToDouble(TextBox8.Text);
                                dr["amount"] = totalprice.ToString();

                                totp = totalprice.ToString();

                                SqlConnection con = new SqlConnection(strcon);
                                if (con.State == ConnectionState.Closed)
                                {
                                    con.Open();
                                }

                                SqlCommand cmd = new SqlCommand("INSERT INTO Estimation_LabourRole(Est_ID,TID,LRID,Labour_Role,Salary_Per_day,No_of_days,No_of_workers,amount) values(@Est_ID,@TID,@LRID,@Labour_Role,@Salary_Per_day,@No_of_days,@No_of_workers,@amount)", con);
                                cmd.Parameters.AddWithValue("@Est_ID", TextBox5.Text.Trim());
                                cmd.Parameters.AddWithValue("@TID", TextBox6.Text.Trim());
                                cmd.Parameters.AddWithValue("@LRID", TextBox2.Text.Trim());
                                cmd.Parameters.AddWithValue("@Labour_Role", TextBox1.Text.Trim());
                                cmd.Parameters.AddWithValue("@Salary_Per_day", TextBox3.Text.Trim());
                                cmd.Parameters.AddWithValue("@No_of_days", TextBox4.Text.Trim());
                                cmd.Parameters.AddWithValue("@No_of_workers", TextBox8.Text.Trim());
                                cmd.Parameters.AddWithValue("@amount", totp);

                                //cmd.Parameters.AddWithValue("@estimated_amount", GridView1.Rows[1].Cells[5].Text.Trim());

                                cmd.ExecuteNonQuery();
                                con.Close();
                                //Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");


                            }
                            else
                            {
                                dr["lrid"] = TextBox2.Text;
                                dr["labourrole"] = TextBox1.Text;
                                dr["salaryperday"] = TextBox3.Text;
                                dr["noofdays"] = TextBox4.Text;
                                dr["noofworkers"] = TextBox8.Text;
                                totalprice = Convert.ToDouble(TextBox3.Text) * Convert.ToDouble(TextBox4.Text) * Convert.ToDouble(TextBox8.Text);
                                dr["amount"] = totalprice.ToString();

                                totp = totalprice.ToString();


                                SqlConnection con = new SqlConnection(strcon);
                                if (con.State == ConnectionState.Closed)
                                {
                                    con.Open();
                                }

                                SqlCommand cmd = new SqlCommand("INSERT INTO Estimation_LabourRole(Est_ID,TID,LRID,Labour_Role,Salary_Per_day,No_of_days,No_of_workers,amount) values(@Est_ID,@TID,@LRID,@Labour_Role,@Salary_Per_day,@No_of_days,@No_of_workers,@amount)", con);
                                cmd.Parameters.AddWithValue("@Est_ID", TextBox5.Text.Trim());
                                cmd.Parameters.AddWithValue("@TID", TextBox6.Text.Trim());
                                cmd.Parameters.AddWithValue("@LRID", TextBox2.Text.Trim());
                                cmd.Parameters.AddWithValue("@Labour_Role", TextBox1.Text.Trim());
                                cmd.Parameters.AddWithValue("@Salary_Per_day", TextBox3.Text.Trim());
                                cmd.Parameters.AddWithValue("@No_of_days", TextBox4.Text.Trim());
                                cmd.Parameters.AddWithValue("@No_of_workers", TextBox8.Text.Trim());
                                cmd.Parameters.AddWithValue("@amount", totp);

                                //cmd.Parameters.AddWithValue("@estimated_amount", GridView1.Rows[1].Cells[5].Text.Trim());

                                cmd.ExecuteNonQuery();
                                con.Close();
                                //Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                            }
                            dt.Rows.Add(dr);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                            Session["buyitems"] = dt;
                            TextBox2.Text = ""; //(dt.Rows.Count + 1).ToString();
                            TextBox1.Text = "";
                            TextBox3.Text = "";
                            TextBox4.Text = "";
                            TextBox8.Text = "";
                            calculateSum();
                        }
                        catch (Exception ex)
                        {

                            Response.Write("<script>alert('" + ex.Message + "');</script>");
                        }

                    }
                    else
                    {

                        Response.Write("<script>alert('This Enter an estimation ID!');</script>");
                    }
                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {

                Response.Write("<script>alert('This Estimation ID Already Exists!');</script>");
            }


        }

        private void calculateSum()
        {
            double grandtotal = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {

                grandtotal = grandtotal + Convert.ToDouble(row.Cells[5].Text); //Where Cells is the column. Just changed the index of cells
            }
            GridView1.FooterRow.Cells[4].Text = "Total Amount RS:";
            GridView1.FooterRow.Cells[5].Text = grandtotal.ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            // SqlCommand cmd = new SqlCommand("UPDATE Estimation SET =(Total_LabourCost) values(@Est_ID,@TID,@Total_MaterialCost,@Location,@Status)", con);
            SqlCommand cmd = new SqlCommand("UPDATE [Estimation] SET [Total_LabourCost] = @Total_LabourCost WHERE ([Est_ID] = @Est_ID)", con);

            cmd.Parameters.AddWithValue("@Est_ID", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@Total_LabourCost", GridView1.FooterRow.Cells[5].Text.Trim());






            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Material Estimation Details are saved');</script>");


        }

        bool checkIfEstimationExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Estimation where Est_ID='" + TextBox5.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count != 1)
                {
                    return false;
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

        bool checkEstimationID()
        {

            if (TextBox5.Text.Trim() == null)
            {

                return false;
            }
            else
                return true;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = (DataTable)Session["data"];
                int count = dt.Rows.Count;
                int lastraw = GridView1.Rows.Count - 1;
                if (count >= 1)
                {
                    dt.Rows[count - 1].Delete();

                }
                Session["data"] = dt;

                String lrid = GridView1.Rows[lastraw].Cells[0].Text;
                String eid = TextBox5.Text.Trim();


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string query = "Delete  From [Estimation_LabourRole] where Est_ID = '" + TextBox5.Text + "' AND LRID ='" + GridView1.Rows[lastraw].Cells[0].Text + "'";
                //string query1 = "Delete From [Estimation] where Est_ID = '" + TextBox1.Text + "'";
                SqlCommand com = new SqlCommand(query, con);
                //SqlCommand com1 = new SqlCommand(query1, con);

                com.ExecuteNonQuery();
                // com1.ExecuteNonQuery();
                con.Close();

                Response.Write(lrid);

                GridView1.DataSource = dt;
                GridView1.DataBind();
                calculateSum();
                Console.WriteLine(lrid);
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



    }
}