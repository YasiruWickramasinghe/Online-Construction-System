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
    public partial class ManageNonPermanatEmployees : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //Add Employee Btn
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfSheetExists())
            {
                Response.Write("<script>alert('Sorry! Duty Sheet with this ID already Exist. You cannot add another Duty Sheet with the same ID');</script>");
            }
            else
            {
                addNonPermanatEmployee();
            }
        }








        // User Defined Function


        bool checkIfSheetExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Non_Permant_Employee_tbl where NPEID='" + TextBox1.Text.Trim() + "';", con);
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







        // User Defined Function

        void addNonPermanatEmployee()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Non_Permant_Employee_tbl(NPEID,Emp_Name,Experience,Profession,Marrage_Status,NIC,Joind_Date,Contact_Number,Report) values(@NPEID,@Emp_Name,@Experience,@Profession,@Marrage_Status,@NIC,@Joind_Date,@Contact_Number,@Report)", con);

              
                cmd.Parameters.AddWithValue("@NPEID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_Name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Experience", DropDownList1.Text.Trim());
                cmd.Parameters.AddWithValue("@Profession", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Marrage_Status", DropDownList2.Text.Trim());
                cmd.Parameters.AddWithValue("@NIC", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Joind_Date", TextBox10.Text.Trim());


                cmd.Parameters.AddWithValue("@Contact_Number", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@Report", TextBox6.Text.Trim());
               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Employee Added to the ICC Data Bases Added Under This Project Successfully');</script>");

                clearForm();

                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }





        // User Defined Function

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            DropDownList1.Text = "";
            TextBox6.Text = "";
            DropDownList2.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
           
        }


        //Update Employ Btn Clicked
        protected void Button3_Click(object sender, EventArgs e)
        {

            if (checkIfSheetExists())
            {
                updateEmployee();
            }
            else
            {
                Response.Write("<script>alert('Duty Sheet does not exist at the current Duty Sheet List');</script>");
            }

        }










        // User Defined Function

        void updateEmployee()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Non_Permant_Employee_tbl SET Emp_Name=@Emp_Name,Experience=@Experience,Profession=@Profession,Marrage_Status=@Marrage_Status,NIC=@NIC,Joind_Date=@Joind_Date,Contact_Number=@Contact_Number,Report=@Report WHERE NPEID ='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@Emp_Name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Experience", DropDownList1.Text.Trim());
                cmd.Parameters.AddWithValue("@Profession", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Marrage_Status", DropDownList2.Text.Trim());
                cmd.Parameters.AddWithValue("@NIC", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Joind_Date", TextBox10.Text.Trim());


                cmd.Parameters.AddWithValue("@Contact_Number", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@Report", TextBox6.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Duty Sheet Updated Successfully');</script>");

                clearForm();

                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        //Delete employee Btton Clicked
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfSheetExists())
            {
                deleteEmployee();

            }
            else
            {
                Response.Write("<script>alert('Entered Emplpyee does not already exist');</script>");
            }
        }






        // User Defined Function

        void deleteEmployee()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Employee Removed From The Project Successfully');</script>");

                clearForm();

                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        //Go Button Clicked
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getEmployeeByID();
        }





        // user defined function

        void getEmployeeByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Non_Permant_Employee_tbl where NPEID='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    DropDownList1.Text = dt.Rows[0][2].ToString();
                    TextBox3.Text = dt.Rows[0][3].ToString();
                    DropDownList2.Text = dt.Rows[0][4].ToString();
                    TextBox9.Text = dt.Rows[0][5].ToString();
                    TextBox10.Text = dt.Rows[0][6].ToString();

                    TextBox11.Text = dt.Rows[0][7].ToString();
                    TextBox6.Text = dt.Rows[0][8].ToString();


                }
                else
                {
                    Response.Write("<script>alert('Sorry This Employee Doesn't exist at The Project');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }







    }
}