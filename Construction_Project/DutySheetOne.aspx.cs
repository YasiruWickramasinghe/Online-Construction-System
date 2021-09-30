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
    public partial class DutySheetOne : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.DataBind();
        }


        //Create Create Button Click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfSheetExists())
            {
                Response.Write("<script>alert('Sorry! Duty Sheet with this ID already Exist. You cannot add another Duty Sheet with the same ID');</script>");
            }
            else
            {
                addNewDutySheet();
            }

        }



        //Update Duty Sheet On Click
        protected void Button6_Click(object sender, EventArgs e)
        {
            if (checkIfSheetExists())
            {
                updateDutySheet();
            }
            else
            {
                Response.Write("<script>alert('Duty Sheet does not exist at the current Duty Sheet List');</script>");
            }

        }


        //Delete Duty Sheet on Click
        protected void Button4_Click(object sender, EventArgs e)
        {

            if (checkIfSheetExists())
            {
                deleteDutySheet();

            }
            else
            {
                Response.Write("<script>alert('Author does not exist');</script>");
            }
        }


        //Go Button On Click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getDutySheetByID();
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

                SqlCommand cmd = new SqlCommand("SELECT * from Duty_Sheet_tbl where Duty_Sheet_No='" + TextBox1.Text.Trim() + "';", con);
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

        void addNewDutySheet()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Duty_Sheet_tbl(Duty_Sheet_No,Date,Discription,Task_No,Task,Place,Duration,Emp_01_ID,Emp_01_Job,Emp_01_Pay_For_1h,Emp_02_ID,Emp_02_Job,Emp_02_Pay_For_1h,Emp_03_ID,Emp_03_Job,Emp_03_Pay_For_1h,Emp_04_ID,Emp_04_Job,Emp_04_Pay_For_1h,Emp_05_ID,Emp_05_Job,Emp_05_Pay_For_1h,Emp_06_ID,Emp_06_Job,Emp_06_Pay_For_1h,Emp_07_ID,Emp_07_Job,Emp_07_Pay_For_1h,Emp_08_ID,Emp_08_Job,Emp_08_Pay_For_1h,Emp_09_ID,Emp_09_Job,Emp_09_Pay_For_1h,Emp_10_ID,Emp_10_Job,Emp_10_Pay_For_1h) values(@Duty_Sheet_No,@Date,@Discription,@Task_No,@Task,@Place,@Duration,@Emp_01_ID,@Emp_01_Job,@Emp_01_Pay_For_1h,@Emp_02_ID,@Emp_02_Job,@Emp_02_Pay_For_1h,@Emp_03_ID,@Emp_03_Job,@Emp_03_Pay_For_1h,@Emp_04_ID,@Emp_04_Job,@Emp_04_Pay_For_1h,@Emp_05_ID,@Emp_05_Job,@Emp_05_Pay_For_1h,@Emp_06_ID,@Emp_06_Job,@Emp_06_Pay_For_1h,@Emp_07_ID,@Emp_07_Job,@Emp_07_Pay_For_1h,@Emp_08_ID,@Emp_08_Job,@Emp_08_Pay_For_1h,@Emp_09_ID,@Emp_09_Job,@Emp_09_Pay_For_1h,@Emp_10_ID,@Emp_10_Job,@Emp_10_Pay_For_1h)", con);

                //@Duty_Sheet_No,@Date,@Discription,@Task_No,@Task,@Place,@Duration
                //,@Emp_01_ID,@Emp_01_Job,@Emp_01_Pay_For_1h,@Emp_02_ID,@Emp_02_Job,@Emp_02_Pay_For_1h,@Emp_03_ID,@Emp_03_Job,@Emp_03_Pay_For_1h,
                //@Emp_04_ID,@Emp_04_Job,@Emp_04_Pay_For_1h,
                //@Emp_05_ID,@Emp_05_Job,@Emp_05_Pay_For_1h,@Emp_06_ID,@Emp_06_Job,@Emp_06_Pay_For_1h,@Emp_07_ID,@Emp_07_Job,@Emp_07_Pay_For_1h,@Emp_08_ID,@Emp_08_Job,@Emp_08_Pay_For_1h,@Emp_09_ID,@Emp_09_Job,@Emp_09_Pay_For_1h,@Emp_10_ID,@Emp_10_Job,@Emp_10_Pay_For_1h

                cmd.Parameters.AddWithValue("@Duty_Sheet_No", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Date", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Discription", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Task_No", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Task", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Place", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Duration", TextBox7.Text.Trim());


                cmd.Parameters.AddWithValue("@Emp_01_ID", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_01_Job", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_01_Pay_For_1h", TextBox10.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_02_ID", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_02_Job", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_02_Pay_For_1h", TextBox13.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_03_ID", TextBox14.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_03_Job", TextBox15.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_03_Pay_For_1h", TextBox16.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_04_ID", TextBox17.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_04_Job", TextBox18.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_04_Pay_For_1h", TextBox19.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_05_ID", TextBox20.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_05_Job", TextBox21.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_05_Pay_For_1h", TextBox22.Text.Trim());


                cmd.Parameters.AddWithValue("@Emp_06_ID", TextBox23.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_06_Job", TextBox24.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_06_Pay_For_1h", TextBox25.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_07_ID", TextBox26.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_07_Job", TextBox27.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_07_Pay_For_1h", TextBox28.Text.Trim());


                cmd.Parameters.AddWithValue("@Emp_08_ID", TextBox29.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_08_Job", TextBox30.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_08_Pay_For_1h", TextBox31.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_09_ID", TextBox32.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_09_Job", TextBox33.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_09_Pay_For_1h", TextBox34.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_10_ID", TextBox35.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_10_Job", TextBox36.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_10_Pay_For_1h", TextBox37.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Duty Sheet Added to the ICC Data Bases Added Under This Project Successfully');</script>");

                clearForm();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }





        // User Defined Function

        void updateDutySheet()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Duty_Sheet_tbl SET Date=@Date,Discription=@Discription,Task_No=@Task_No,Task=@Task,Place=@Place,Duration=@Duration,Emp_01_ID=@Emp_01_ID,Emp_01_Job=@Emp_01_Job,Emp_01_Pay_For_1h=@Emp_01_Pay_For_1h,Emp_02_ID=@Emp_02_ID,Emp_02_Job=@Emp_02_Job,Emp_02_Pay_For_1h=@Emp_02_Pay_For_1h,Emp_03_ID=@Emp_03_ID,Emp_03_Job=@Emp_03_Job,Emp_03_Pay_For_1h=@Emp_03_Pay_For_1h,Emp_04_ID=@Emp_04_ID,Emp_04_Job=@Emp_04_Job,Emp_04_Pay_For_1h=@Emp_04_Pay_For_1h,Emp_05_ID=@Emp_05_ID,Emp_05_Job=@Emp_05_Job,Emp_05_Pay_For_1h=@Emp_05_Pay_For_1h,Emp_06_ID=@Emp_06_ID,Emp_06_Job=@Emp_06_Job,Emp_06_Pay_For_1h=@Emp_06_Pay_For_1h,Emp_07_ID=@Emp_07_ID,Emp_07_Job=@Emp_07_Job,Emp_07_Pay_For_1h=@Emp_07_Pay_For_1h,Emp_08_ID=@Emp_08_ID,Emp_08_Job=@Emp_08_Job,Emp_08_Pay_For_1h=@Emp_08_Pay_For_1h,Emp_09_ID=@Emp_09_ID,Emp_09_Job=@Emp_09_Job,Emp_09_Pay_For_1h=@Emp_09_Pay_For_1h,Emp_10_ID=@Emp_10_ID,Emp_10_Job=@Emp_10_Job,Emp_10_Pay_For_1h=@Emp_10_Pay_For_1h WHERE Duty_Sheet_No='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@Date", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Discription", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Task_No", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Task", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Place", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Duration", TextBox7.Text.Trim());


                cmd.Parameters.AddWithValue("@Emp_01_ID", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_01_Job", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_01_Pay_For_1h", TextBox10.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_02_ID", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_02_Job", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_02_Pay_For_1h", TextBox13.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_03_ID", TextBox14.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_03_Job", TextBox15.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_03_Pay_For_1h", TextBox16.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_04_ID", TextBox17.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_04_Job", TextBox18.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_04_Pay_For_1h", TextBox19.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_05_ID", TextBox20.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_05_Job", TextBox21.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_05_Pay_For_1h", TextBox22.Text.Trim());


                cmd.Parameters.AddWithValue("@Emp_06_ID", TextBox23.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_06_Job", TextBox24.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_06_Pay_For_1h", TextBox25.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_07_ID", TextBox26.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_07_Job", TextBox27.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_07_Pay_For_1h", TextBox28.Text.Trim());


                cmd.Parameters.AddWithValue("@Emp_08_ID", TextBox29.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_08_Job", TextBox30.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_08_Pay_For_1h", TextBox31.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_09_ID", TextBox32.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_09_Job", TextBox33.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_09_Pay_For_1h", TextBox34.Text.Trim());

                cmd.Parameters.AddWithValue("@Emp_10_ID", TextBox35.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_10_Job", TextBox36.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_10_Pay_For_1h", TextBox37.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Duty Sheet Updated Successfully');</script>");
                
                clearForm();
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }






        // User Defined Function

        void deleteDutySheet()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from Duty_Sheet_tbl WHERE Duty_Sheet_No='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Duty Sheet Deleted Successfully');</script>");
              
                clearForm();
                

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
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
            TextBox17.Text = "";
            TextBox18.Text = "";
            TextBox19.Text = "";
            TextBox20.Text = "";
            TextBox21.Text = "";
            TextBox22.Text = "";
            TextBox23.Text = "";
            TextBox24.Text = "";
            TextBox25.Text = "";
            TextBox26.Text = "";
            TextBox27.Text = "";
            TextBox28.Text = "";
            TextBox29.Text = "";
            TextBox30.Text = "";
            TextBox31.Text = "";
            TextBox32.Text = "";
            TextBox33.Text = "";
            TextBox34.Text = "";
            TextBox35.Text = "";
            TextBox36.Text = "";
            TextBox37.Text = "";
        }









        // user defined function

        void getDutySheetByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Duty_Sheet_tbl where Duty_Sheet_No='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][5].ToString(); 
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    TextBox5.Text = dt.Rows[0][4].ToString();
                    TextBox6.Text = dt.Rows[0][2].ToString();
                    TextBox7.Text = dt.Rows[0][6].ToString();

                    TextBox8.Text = dt.Rows[0][7].ToString();
                    TextBox9.Text = dt.Rows[0][8].ToString();
                    TextBox10.Text = dt.Rows[0][9].ToString();

                    TextBox11.Text = dt.Rows[0][14].ToString();
                    TextBox12.Text = dt.Rows[0][15].ToString();
                    TextBox13.Text = dt.Rows[0][16].ToString();

                    TextBox14.Text = dt.Rows[0][21].ToString();
                    TextBox15.Text = dt.Rows[0][22].ToString();
                    TextBox16.Text = dt.Rows[0][23].ToString();

                    TextBox17.Text = dt.Rows[0][28].ToString();
                    TextBox18.Text = dt.Rows[0][29].ToString();
                    TextBox19.Text = dt.Rows[0][30].ToString();

                    TextBox20.Text = dt.Rows[0][35].ToString();
                    TextBox21.Text = dt.Rows[0][36].ToString();
                    TextBox22.Text = dt.Rows[0][37].ToString();

                    TextBox23.Text = dt.Rows[0][42].ToString();
                    TextBox24.Text = dt.Rows[0][43].ToString();
                    TextBox25.Text = dt.Rows[0][44].ToString();

                    TextBox26.Text = dt.Rows[0][49].ToString();
                    TextBox27.Text = dt.Rows[0][50].ToString();
                    TextBox28.Text = dt.Rows[0][51].ToString();

                    TextBox29.Text = dt.Rows[0][56].ToString();
                    TextBox30.Text = dt.Rows[0][57].ToString();
                    TextBox31.Text = dt.Rows[0][58].ToString();

                    TextBox32.Text = dt.Rows[0][63].ToString();
                    TextBox33.Text = dt.Rows[0][64].ToString();
                    TextBox34.Text = dt.Rows[0][65].ToString();

                    TextBox35.Text = dt.Rows[0][70].ToString();
                    TextBox36.Text = dt.Rows[0][71].ToString();
                    TextBox37.Text = dt.Rows[0][72].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Sorry This Duty Sheet Doesn't exist at ICC Data Bases');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            clearForm();
        }







    }
}


// Thank you R.K Work !