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
    public partial class EmployPayments : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }



        //SELECT Button Click
        protected void Button2_Click(object sender, EventArgs e)
        {
            getDutySheetByID();
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

                SqlCommand cmd = new SqlCommand("SELECT * from Duty_Sheet_tbl where Duty_Sheet_No='" + TextBox38.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox39.Text = dt.Rows[0][1].ToString();  //Date Setted





                    //    ----------- Employee One -----------------   //

                    TextBox8.Text = dt.Rows[0][7].ToString(); //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd1 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox8.Text.Trim() + "'", con);
                    SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                    DataTable dt1 = new DataTable();
                    da1.Fill(dt1);
                    if (dt1.Rows.Count >= 1)
                    {
                        TextBox9.Text = dt1.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee One Is Removed From The Project !');</script>");
                    }

                    TextBox40.Text = dt.Rows[0][12].ToString(); //attendance


                    TextBox1.Text = dt.Rows[0][10].ToString();   //worked no of hrs
                    TextBox3.Text = dt.Rows[0][9].ToString();  //pay for hr
                    TextBox4.Text = dt.Rows[0][11].ToString();   //tot pay

                    TextBox5.Text = dt.Rows[0][13].ToString(); // pd or not 

                    //Calculation Part 

                    int worked_hr1, payHr1, tot_pay1;

                    worked_hr1 = Convert.ToInt32(dt.Rows[0][9].ToString().Trim());
                    payHr1 = Convert.ToInt32(dt.Rows[0][10].ToString().Trim());
                    tot_pay1 = worked_hr1 * payHr1;
                    TextBox4.Text = tot_pay1.ToString();








                    //    ----------- Employee Two -----------------   //

                    TextBox2.Text = dt.Rows[0][14].ToString(); //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd2 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox2.Text.Trim() + "'", con);
                    SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                    DataTable dt2 = new DataTable();
                    da2.Fill(dt2);
                    if (dt2.Rows.Count >= 1)
                    {
                        TextBox6.Text = dt2.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee two Is Removed From The Project !');</script>");
                    }

                    TextBox7.Text = dt.Rows[0][19].ToString(); //attendance


                    TextBox10.Text = dt.Rows[0][17].ToString();   //worked no of hrs
                    TextBox11.Text = dt.Rows[0][16].ToString();  //pay for hr
                    TextBox12.Text = dt.Rows[0][11].ToString();   //tot pay

                    TextBox13.Text = dt.Rows[0][20].ToString(); // pd or not 

                    //Calculation Part 

                    int worked_hr2, payHr2, tot_pay2;

                    worked_hr2 = Convert.ToInt32(dt.Rows[0][17].ToString().Trim());
                    payHr2 = Convert.ToInt32(dt.Rows[0][16].ToString().Trim());
                    tot_pay2 = worked_hr2 * payHr2;
                    TextBox12.Text = tot_pay2.ToString();











                    //    ----------- Employee three -----------------   //

                    TextBox14.Text = dt.Rows[0][21].ToString(); //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd3 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox14.Text.Trim() + "'", con);
                    SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
                    DataTable dt3 = new DataTable();
                    da3.Fill(dt3);
                    if (dt3.Rows.Count >= 1)
                    {
                        TextBox15.Text = dt3.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee Three Is Removed From The Project !');</script>");
                    }

                    TextBox16.Text = dt.Rows[0][26].ToString(); //attendance


                    TextBox17.Text = dt.Rows[0][24].ToString();   //worked no of hrs
                    TextBox18.Text = dt.Rows[0][23].ToString();  //pay for hr
                    TextBox19.Text = dt.Rows[0][25].ToString();   //tot pay

                    TextBox20.Text = dt.Rows[0][27].ToString(); // pd or not 

                    //Calculation Part 

                    int worked_hr3, payHr3, tot_pay3;

                    worked_hr3 = Convert.ToInt32(dt.Rows[0][24].ToString().Trim());
                    payHr3 = Convert.ToInt32(dt.Rows[0][23].ToString().Trim());
                    tot_pay3 = worked_hr3 * payHr3;
                    TextBox19.Text = tot_pay3.ToString();










                    //    ----------- Employee Four -----------------   //

                    TextBox21.Text = dt.Rows[0][28].ToString(); //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd4 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox21.Text.Trim() + "'", con);
                    SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
                    DataTable dt4 = new DataTable();
                    da4.Fill(dt4);
                    if (dt4.Rows.Count >= 1)
                    {
                        TextBox22.Text = dt4.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee four Is Removed From The Project !');</script>");
                    }

                    TextBox23.Text = dt.Rows[0][33].ToString(); //attendance


                    TextBox24.Text = dt.Rows[0][31].ToString();   //worked no of hrs
                    TextBox25.Text = dt.Rows[0][30].ToString();  //pay for hr
                    TextBox26.Text = dt.Rows[0][32].ToString();   //tot pay

                    TextBox27.Text = dt.Rows[0][34].ToString(); // pd or not 

                    //Calculation Part 

                    int worked_hr4, payHr4, tot_pay4;

                    worked_hr4 = Convert.ToInt32(dt.Rows[0][31].ToString().Trim());
                    payHr4 = Convert.ToInt32(dt.Rows[0][30].ToString().Trim());
                    tot_pay4 = worked_hr4 * payHr4;
                    TextBox26.Text = tot_pay4.ToString();







                    //    ----------- Employee Five -----------------   //

                    TextBox28.Text = dt.Rows[0][35].ToString(); //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd5 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox28.Text.Trim() + "'", con);
                    SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                    DataTable dt5 = new DataTable();
                    da5.Fill(dt5);
                    if (dt5.Rows.Count >= 1)
                    {
                        TextBox29.Text = dt5.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee five Is Removed From The Project !');</script>");
                    }

                    TextBox30.Text = dt.Rows[0][40].ToString(); //attendance


                    TextBox31.Text = dt.Rows[0][38].ToString();   //worked no of hrs
                    TextBox32.Text = dt.Rows[0][37].ToString();  //pay for hr
                    TextBox33.Text = dt.Rows[0][39].ToString();   //tot pay

                    TextBox34.Text = dt.Rows[0][41].ToString(); // pd or not 

                    //Calculation Part 

                    int worked_hr5, payHr5, tot_pay5;

                    worked_hr5 = Convert.ToInt32(dt.Rows[0][38].ToString().Trim());
                    payHr5 = Convert.ToInt32(dt.Rows[0][37].ToString().Trim());
                    tot_pay5 = worked_hr5 * payHr5;
                    TextBox33.Text = tot_pay5.ToString();







                    //    ----------- Employee Six -----------------   //

                    TextBox35.Text = dt.Rows[0][42].ToString(); //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd6 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox35.Text.Trim() + "'", con);
                    SqlDataAdapter da6 = new SqlDataAdapter(cmd6);
                    DataTable dt6 = new DataTable();
                    da6.Fill(dt6);
                    if (dt6.Rows.Count >= 1)
                    {
                        TextBox36.Text = dt6.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee six Is Removed From The Project !');</script>");
                    }

                    TextBox37.Text = dt.Rows[0][47].ToString(); //attendance


                    TextBox41.Text = dt.Rows[0][45].ToString();   //worked no of hrs
                    TextBox42.Text = dt.Rows[0][44].ToString();  //pay for hr
                    TextBox43.Text = dt.Rows[0][46].ToString();   //tot pay

                    TextBox44.Text = dt.Rows[0][48].ToString(); // pd or not 

                    //Calculation Part 

                    int worked_hr6, payHr6, tot_pay6;

                    worked_hr6 = Convert.ToInt32(dt.Rows[0][38].ToString().Trim());
                    payHr6 = Convert.ToInt32(dt.Rows[0][37].ToString().Trim());
                    tot_pay6 = worked_hr6 * payHr6;
                    TextBox43.Text = tot_pay6.ToString();









                    //    ----------- Employee Seventh -----------------   //

                    TextBox45.Text = dt.Rows[0][49].ToString(); //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd7 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox45.Text.Trim() + "'", con);
                    SqlDataAdapter da7 = new SqlDataAdapter(cmd7);
                    DataTable dt7 = new DataTable();
                    da7.Fill(dt7);
                    if (dt7.Rows.Count >= 1)
                    {
                        TextBox46.Text = dt7.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee seven Is Removed From The Project !');</script>");
                    }

                    TextBox47.Text = dt.Rows[0][54].ToString(); //attendance


                    TextBox48.Text = dt.Rows[0][52].ToString();   //worked no of hrs
                    TextBox49.Text = dt.Rows[0][51].ToString();  //pay for hr
                    TextBox50.Text = dt.Rows[0][53].ToString();   //tot pay

                    TextBox51.Text = dt.Rows[0][55].ToString(); // pd or not 

                    //Calculation Part 

                    int worked_hr7, payHr7, tot_pay7;

                    worked_hr7 = Convert.ToInt32(dt.Rows[0][52].ToString().Trim());
                    payHr7 = Convert.ToInt32(dt.Rows[0][51].ToString().Trim());
                    tot_pay7 = worked_hr7 * payHr7;
                    TextBox50.Text = tot_pay7.ToString();









                    //    ----------- Employee Eighth -----------------   //

                    TextBox52.Text = dt.Rows[0][56].ToString(); //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd8 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox52.Text.Trim() + "'", con);
                    SqlDataAdapter da8 = new SqlDataAdapter(cmd8);
                    DataTable dt8 = new DataTable();
                    da8.Fill(dt8);
                    if (dt8.Rows.Count >= 1)
                    {
                        TextBox53.Text = dt8.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee eight Is Removed From The Project !');</script>");
                    }

                    TextBox54.Text = dt.Rows[0][61].ToString(); //attendance


                    TextBox55.Text = dt.Rows[0][59].ToString();   //worked no of hrs
                    TextBox56.Text = dt.Rows[0][58].ToString();  //pay for hr
                    TextBox57.Text = dt.Rows[0][60].ToString();   //tot pay

                    TextBox58.Text = dt.Rows[0][62].ToString(); // pd or not 

                    //Calculation Part 

                    int worked_hr8, payHr8, tot_pay8;

                    worked_hr8 = Convert.ToInt32(dt.Rows[0][59].ToString().Trim());
                    payHr8 = Convert.ToInt32(dt.Rows[0][58].ToString().Trim());
                    tot_pay8 = worked_hr8 * payHr8;
                    TextBox57.Text = tot_pay8.ToString();









                    //    ----------- Employee Nine -----------------   //

                    TextBox59.Text = dt.Rows[0][63].ToString(); //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd9 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox59.Text.Trim() + "'", con);
                    SqlDataAdapter da9 = new SqlDataAdapter(cmd9);
                    DataTable dt9 = new DataTable();
                    da9.Fill(dt9);
                    if (dt9.Rows.Count >= 1)
                    {
                        TextBox60.Text = dt9.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee nine Is Removed From The Project !');</script>");
                    }

                    TextBox61.Text = dt.Rows[0][68].ToString(); //attendance


                    TextBox62.Text = dt.Rows[0][66].ToString();   //worked no of hrs
                    TextBox63.Text = dt.Rows[0][65].ToString();  //pay for hr
                    TextBox64.Text = dt.Rows[0][67].ToString();   //tot pay

                    TextBox65.Text = dt.Rows[0][69].ToString(); // pd or not 

                    //Calculation Part 

                    int worked_hr9, payHr9, tot_pay9;

                    worked_hr9 = Convert.ToInt32(dt.Rows[0][66].ToString().Trim());
                    payHr9 = Convert.ToInt32(dt.Rows[0][65].ToString().Trim());
                    tot_pay9 = worked_hr9 * payHr9;
                    TextBox64.Text = tot_pay9.ToString();







                    //    ----------- Employee Ten -----------------   //

                    TextBox66.Text = dt.Rows[0][70].ToString(); //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd10 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox66.Text.Trim() + "'", con);
                    SqlDataAdapter da10 = new SqlDataAdapter(cmd10);
                    DataTable dt10 = new DataTable();
                    da10.Fill(dt10);
                    if (dt10.Rows.Count >= 1)
                    {
                        TextBox67.Text = dt10.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee ten Is Removed From The Project !');</script>");
                    }

                    TextBox68.Text = dt.Rows[0][75].ToString(); //attendance


                    TextBox69.Text = dt.Rows[0][73].ToString();   //worked no of hrs
                    TextBox70.Text = dt.Rows[0][72].ToString();  //pay for hr
                    TextBox71.Text = dt.Rows[0][74].ToString();   //tot pay

                    TextBox72.Text = dt.Rows[0][76].ToString(); // pd or not 

                    //Calculation Part 

                    int worked_hr10,payHr10,tot_pay10;

                    worked_hr10 = Convert.ToInt32(dt.Rows[0][73].ToString().Trim());
                    payHr10 = Convert.ToInt32(dt.Rows[0][72].ToString().Trim());
                    tot_pay10 = worked_hr10*payHr10;
                    TextBox71.Text = tot_pay10.ToString();


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

                SqlCommand cmd = new SqlCommand("SELECT * from Duty_Sheet_tbl where Duty_Sheet_No='" + TextBox38.Text.Trim() + "';", con);
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
        //Check Over






        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            TextBox5.Text = "Paid"; // pd or not 
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            TextBox5.Text = "";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            TextBox13.Text = "Paid"; // pd or not 
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            TextBox13.Text = ""; // pd or not 
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            TextBox20.Text = "Paid"; // pd or not 
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            TextBox20.Text = ""; // pd or not 
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            TextBox27.Text = "Paid"; // pd or not 
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            TextBox27.Text = ""; // pd or not 
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            TextBox34.Text = "Paid"; // pd or not 
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            TextBox34.Text = ""; // pd or not 
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            TextBox44.Text = "Paid"; // pd or not 
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            TextBox44.Text = ""; // pd or not 
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            TextBox51.Text = "Paid"; // pd or not 
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            TextBox51.Text = ""; // pd or not 
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            TextBox58.Text = "Paid"; // pd or not 
        }

        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            TextBox58.Text = ""; // pd or not 
        }

        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            TextBox65.Text = "Paid"; // pd or not 
        }

        protected void LinkButton18_Click(object sender, EventArgs e)
        {
            TextBox65.Text = ""; // pd or not 
        }

        protected void LinkButton19_Click(object sender, EventArgs e)
        {
            TextBox72.Text = "Paid"; // pd or not 
        }

        protected void LinkButton20_Click(object sender, EventArgs e)
        {
            TextBox72.Text = ""; // pd or not 
        }


        //Mark Payments (submit the updation)
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfSheetExists())
            {
                MarkPayments();
            }
            else
            {
                Response.Write("<script>alert('Duty Sheet does not exist at the current Duty Sheet List');</script>");
            }
        }



        // User Defined Function

        void MarkPayments()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Duty_Sheet_tbl SET Emp_01_Toal_Payment=@Emp_01_Toal_Payment,Emp_01_Salary_Pd=@Emp_01_Salary_Pd,Emp_02_Toal_Payment=@Emp_02_Toal_Payment,Emp_02_Salary_Pd=@Emp_02_Salary_Pd,Emp_03_Toal_Payment=@Emp_03_Toal_Payment,Emp_03_Salary_Pd=@Emp_03_Salary_Pd,Emp_04_Toal_Payment=@Emp_04_Toal_Payment,Emp_04_Salary_Pd=@Emp_04_Salary_Pd,Emp_05_Toal_Payment=@Emp_05_Toal_Payment,Emp_05_Salary_Pd=@Emp_05_Salary_Pd,Emp_07_Toal_Payment=@Emp_07_Toal_Payment,Emp_07_Salary_Pd=@Emp_07_Salary_Pd,Emp_08_Toal_Payment=@Emp_08_Toal_Payment,Emp_08_Salary_Pd=@Emp_08_Salary_Pd,Emp_09_Toal_Payment=@Emp_09_Toal_Payment,Emp_09_Salary_Pd=@Emp_09_Salary_Pd,Emp_10_Toal_Payment=@Emp_10_Toal_Payment,Emp_10_Salary_Pd=@Emp_10_Salary_Pd WHERE Duty_Sheet_No='" + TextBox38.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@Emp_01_Toal_Payment", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_02_Toal_Payment", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_03_Toal_Payment", TextBox19.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_04_Toal_Payment", TextBox26.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_05_Toal_Payment", TextBox33.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_06_Toal_Payment", TextBox43.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_07_Toal_Payment", TextBox50.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_08_Toal_Payment", TextBox57.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_09_Toal_Payment", TextBox64.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_10_Toal_Payment", TextBox71.Text.Trim());


                cmd.Parameters.AddWithValue("@Emp_01_Salary_Pd", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_02_Salary_Pd", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_03_Salary_Pd", TextBox20.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_04_Salary_Pd", TextBox27.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_05_Salary_Pd", TextBox34.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_06_Salary_Pd", TextBox44.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_07_Salary_Pd", TextBox51.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_08_Salary_Pd", TextBox58.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_09_Salary_Pd", TextBox65.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_10_Salary_Pd", TextBox72.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Given Payments Recorded Successfully');</script>");

                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //Attendance Marking Over



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
            TextBox38.Text = "";
            TextBox39.Text = "";
            TextBox40.Text = "";
            TextBox41.Text = "";
            TextBox42.Text = "";
            TextBox43.Text = "";
            TextBox44.Text = "";
            TextBox45.Text = "";
            TextBox46.Text = "";
            TextBox47.Text = "";
            TextBox48.Text = "";
            TextBox49.Text = "";
            TextBox50.Text = "";
            TextBox51.Text = "";
            TextBox52.Text = "";
            TextBox53.Text = "";
            TextBox54.Text = "";
            TextBox55.Text = "";
            TextBox56.Text = "";
            TextBox57.Text = "";
            TextBox58.Text = "";
            TextBox59.Text = "";
            TextBox60.Text = "";
            TextBox61.Text = "";
            TextBox62.Text = "";
            TextBox63.Text = "";
            TextBox64.Text = "";
            TextBox65.Text = "";
            TextBox66.Text = "";
            TextBox67.Text = "";
            TextBox68.Text = "";
            TextBox69.Text = "";
            TextBox70.Text = "";
            TextBox71.Text = "";
            TextBox72.Text = "";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            clearForm();
        }







        // User Defined Function

        void clearMarking()
        {
            TextBox5.Text = "";

            TextBox13.Text = "";
            TextBox20.Text = "";

            TextBox27.Text = "";
            TextBox34.Text = "";

            TextBox44.Text = "";

            TextBox51.Text = "";
            TextBox58.Text = "";

            TextBox68.Text = "";
            TextBox72.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            clearMarking();
        }
    }
}