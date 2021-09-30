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
    public partial class MarkAttendance : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        //SELECT button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            getDutySheetByID();
        }

        //Clear Marking Sheet
        protected void Button6_Click(object sender, EventArgs e)
        {
            clearForm();
        }

        //Submit (Update) Form
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfSheetExists())
            {
                MarkAttendence();
            }
            else
            {
                Response.Write("<script>alert('Duty Sheet does not exist at the current Duty Sheet List');</script>");
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




        // User Defined Function

        void MarkAttendence()  
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Duty_Sheet_tbl SET Emp_01_Worked_Hrs=@Emp_01_Worked_Hrs,Emp_01_Attendance=@Emp_01_Attendance,Emp_02_Worked_Hrs=@Emp_02_Worked_Hrs,Emp_03_Worked_Hrs=@Emp_03_Worked_Hrs,Emp_04_Worked_Hrs=@Emp_04_Worked_Hrs,Emp_05_Worked_Hrs=@Emp_05_Worked_Hrs,Emp_06_Worked_Hrs=@Emp_06_Worked_Hrs,Emp_07_Worked_Hrs=@Emp_07_Worked_Hrs,Emp_08_Worked_Hrs=@Emp_08_Worked_Hrs,Emp_09_Worked_Hrs=@Emp_09_Worked_Hrs,Emp_10_Worked_Hrs=@Emp_10_Worked_Hrs,Emp_02_Attendance=@Emp_02_Attendance,Emp_03_Attendance=@Emp_03_Attendance,Emp_04_Attendance=@Emp_04_Attendance,Emp_05_Attendance=@Emp_05_Attendance,Emp_06_Attendance=@Emp_06_Attendance,Emp_07_Attendance=@Emp_07_Attendance,Emp_08_Attendance=@Emp_08_Attendance,Emp_09_Attendance=@Emp_09_Attendance,Emp_10_Attendance=@Emp_10_Attendance WHERE Duty_Sheet_No='" + TextBox38.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@Emp_01_Attendance", TextBox40.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_02_Attendance", TextBox14.Text.Trim());   
                cmd.Parameters.AddWithValue("@Emp_03_Attendance", TextBox57.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_04_Attendance", TextBox19.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_05_Attendance", TextBox24.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_06_Attendance", TextBox29.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_07_Attendance", TextBox34.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_08_Attendance", TextBox42.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_09_Attendance", TextBox47.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_10_Attendance", TextBox52.Text.Trim());


                cmd.Parameters.AddWithValue("@Emp_01_Worked_Hrs", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_02_Worked_Hrs", TextBox13.Text.Trim());  
                cmd.Parameters.AddWithValue("@Emp_03_Worked_Hrs", TextBox56.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_04_Worked_Hrs", TextBox18.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_05_Worked_Hrs", TextBox23.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_06_Worked_Hrs", TextBox28.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_07_Worked_Hrs", TextBox33.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_08_Worked_Hrs", TextBox41.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_09_Worked_Hrs", TextBox46.Text.Trim());
                cmd.Parameters.AddWithValue("@Emp_10_Worked_Hrs", TextBox51.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Duty Sheet Marked Successfully');</script>");

                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //Attendance Marking Over






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

                    // initial data setting

                    TextBox39.Text = dt.Rows[0][1].ToString();
                    TextBox6.Text = dt.Rows[0][2].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    TextBox5.Text = dt.Rows[0][4].ToString();
                    TextBox3.Text = dt.Rows[0][5].ToString();
                    TextBox7.Text = dt.Rows[0][6].ToString();




                    //Emoploy 01 Settings//

                    TextBox8.Text = dt.Rows[0][7].ToString();    //npid

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


                    TextBox10.Text = dt.Rows[0][8].ToString();   //job

                    TextBox1.Text = dt.Rows[0][10].ToString();   //workedHrs

                    TextBox40.Text = dt.Rows[0][12].ToString();   //Attendence




                    //Emoploy 02 Settings//

                    TextBox2.Text = dt.Rows[0][14].ToString();    //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd2 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox2.Text.Trim() + "'", con);
                    SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                    DataTable dt2 = new DataTable();
                    da2.Fill(dt2);
                    if (dt2.Rows.Count >= 1)
                    {
                        TextBox11.Text = dt2.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee Two Is Removed From The Project !');</script>");
                    }


                    TextBox12.Text = dt.Rows[0][15].ToString();   //job

                    TextBox13.Text = dt.Rows[0][17].ToString();   //workedHrs

                    TextBox14.Text = dt.Rows[0][19].ToString();   //Attendence




                    //Emoploy 03 Settings//

                    TextBox53.Text = dt.Rows[0][21].ToString();    //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd3 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox53.Text.Trim() + "'", con);
                    SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
                    DataTable dt3 = new DataTable();
                    da3.Fill(dt3);
                    if (dt3.Rows.Count >= 1)
                    {
                        TextBox54.Text = dt3.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee Three Is Removed From The Project !');</script>");
                    }


                    TextBox55.Text = dt.Rows[0][22].ToString();   //job

                    TextBox56.Text = dt.Rows[0][24].ToString();   //workedHrs

                    TextBox57.Text = dt.Rows[0][26].ToString();   //Attendence


                    //Emoploy 04 Settings//

                    TextBox15.Text = dt.Rows[0][28].ToString();    //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd4 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox15.Text.Trim() + "'", con);
                    SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
                    DataTable dt4 = new DataTable();
                    da4.Fill(dt4);
                    if (dt4.Rows.Count >= 1)
                    {
                        TextBox16.Text = dt4.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee Four Is Removed From The Project !');</script>");
                    }


                    TextBox17.Text = dt.Rows[0][29].ToString();   //job

                    TextBox18.Text = dt.Rows[0][31].ToString();   //workedHrs

                    TextBox19.Text = dt.Rows[0][33].ToString();   //Attendence




                    //Emoploy 05 Settings//

                    TextBox20.Text = dt.Rows[0][35].ToString();    //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd5 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox20.Text.Trim() + "'", con);
                    SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                    DataTable dt5 = new DataTable();
                    da5.Fill(dt5);
                    if (dt5.Rows.Count >= 1)
                    {
                        TextBox21.Text = dt5.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee Five Is Removed From The Project !');</script>");
                    }


                    TextBox22.Text = dt.Rows[0][36].ToString();   //job

                    TextBox23.Text = dt.Rows[0][38].ToString();   //workedHrs

                    TextBox24.Text = dt.Rows[0][40].ToString();   //Attendence


                    //Emoploy 06 Settings//

                    TextBox25.Text = dt.Rows[0][42].ToString();    //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd6 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox25.Text.Trim() + "'", con);
                    SqlDataAdapter da6 = new SqlDataAdapter(cmd6);
                    DataTable dt6 = new DataTable();
                    da6.Fill(dt6);
                    if (dt6.Rows.Count >= 1)
                    {
                        TextBox26.Text = dt6.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee Six Is Removed From The Project !');</script>");
                    }


                    TextBox27.Text = dt.Rows[0][43].ToString();   //job

                    TextBox28.Text = dt.Rows[0][45].ToString();   //workedHrs

                    TextBox29.Text = dt.Rows[0][47].ToString();   //Attendence




                    //Emoploy 07 Settings//

                    TextBox30.Text = dt.Rows[0][49].ToString();    //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd7 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox30.Text.Trim() + "'", con);
                    SqlDataAdapter da7 = new SqlDataAdapter(cmd7);
                    DataTable dt7 = new DataTable();
                    da7.Fill(dt7);
                    if (dt6.Rows.Count >= 1)
                    {
                        TextBox31.Text = dt7.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee Seven Is Removed From The Project !');</script>");
                    }


                    TextBox32.Text = dt.Rows[0][50].ToString();   //job

                    TextBox33.Text = dt.Rows[0][52].ToString();   //workedHrs

                    TextBox34.Text = dt.Rows[0][54].ToString();   //Attendence



                    //Emoploy 08 Settings//

                    TextBox35.Text = dt.Rows[0][56].ToString();    //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd8 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox35.Text.Trim() + "'", con);
                    SqlDataAdapter da8 = new SqlDataAdapter(cmd8);
                    DataTable dt8 = new DataTable();
                    da8.Fill(dt8);
                    if (dt8.Rows.Count >= 1)
                    {
                        TextBox36.Text = dt8.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee Eight Is Removed From The Project !');</script>");
                    }


                    TextBox37.Text = dt.Rows[0][57].ToString();   //job

                    TextBox41.Text = dt.Rows[0][59].ToString();   //workedHrs

                    TextBox42.Text = dt.Rows[0][61].ToString();   //Attendence



                    //Emoploy 09 Settings//

                    TextBox43.Text = dt.Rows[0][63].ToString();    //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd9 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox43.Text.Trim() + "'", con);
                    SqlDataAdapter da9 = new SqlDataAdapter(cmd9);
                    DataTable dt9 = new DataTable();
                    da9.Fill(dt9);
                    if (dt9.Rows.Count >= 1)
                    {
                        TextBox44.Text = dt9.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee Nine Is Removed From The Project !');</script>");
                    }


                    TextBox45.Text = dt.Rows[0][64].ToString();   //job

                    TextBox46.Text = dt.Rows[0][66].ToString();   //workedHrs

                    TextBox47.Text = dt.Rows[0][68].ToString();   //Attendence


                    //Emoploy 10 Settings//

                    TextBox48.Text = dt.Rows[0][70].ToString();    //npid

                    // Correct this by calling emp table latter

                    SqlCommand cmd10 = new SqlCommand("select * from Non_Permant_Employee_tbl WHERE NPEID='" + TextBox48.Text.Trim() + "'", con);
                    SqlDataAdapter da10 = new SqlDataAdapter(cmd10);
                    DataTable dt10 = new DataTable();
                    da10.Fill(dt10);
                    if (dt10.Rows.Count >= 1)
                    {
                        TextBox49.Text = dt10.Rows[0][1].ToString();   //name setting
                    }
                    else
                    {
                        Response.Write("<script>alert('Employee Ten Is Removed From The Project !');</script>");
                    }


                    TextBox50.Text = dt.Rows[0][71].ToString();   //job

                    TextBox51.Text = dt.Rows[0][73].ToString();   //workedHrs

                    TextBox52.Text = dt.Rows[0][75].ToString();   //Attendence



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
        }  //End of Select Button





        // User Defined Function

        void clearMarking()
        {
            TextBox1.Text = "";
           
            TextBox13.Text = "";
            TextBox14.Text = "";
          
            TextBox18.Text = "";
            TextBox19.Text = "";
           
            TextBox23.Text = "";
            TextBox24.Text = "";
          
            TextBox28.Text = "";
            TextBox29.Text = "";
            
            TextBox33.Text = "";
            TextBox34.Text = "";
          
            TextBox41.Text = "";
            TextBox42.Text = "";
          
            TextBox40.Text = "";
            TextBox47.Text = "";
            TextBox46.Text = "";

            TextBox51.Text = "";
            TextBox52.Text = "";
           
            TextBox56.Text = "";
            TextBox57.Text = "";
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
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            TextBox40.Text = "Present";
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            TextBox40.Text = "Absent";
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            TextBox14.Text = "Absent";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            TextBox14.Text = "Present";
        }

        protected void LinkButton19_Click(object sender, EventArgs e)
        {
            TextBox57.Text = "Present";
        }

        protected void LinkButton20_Click(object sender, EventArgs e)
        {
            TextBox57.Text = "Absent";
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            TextBox19.Text = "Present";
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            TextBox19.Text = "Absent";
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            TextBox24.Text = "Present";
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            TextBox24.Text = "Absent";
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            TextBox29.Text = "Absent";
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            TextBox29.Text = "Present";
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            TextBox34.Text = "Present";
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            TextBox34.Text = "Absent";
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            TextBox42.Text = "Present";
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            TextBox42.Text = "Absent";
        }

        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            TextBox47.Text = "Absent";
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            TextBox47.Text = "Present";
        }

        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            TextBox52.Text = "Present";
        }

        protected void LinkButton18_Click(object sender, EventArgs e)
        {
            TextBox52.Text = "Absent";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            clearMarking();
        }
    }
}