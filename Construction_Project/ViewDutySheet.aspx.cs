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
    public partial class ViewDutySheet : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        //Serch Button Click
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
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox6.Text = dt.Rows[0][2].ToString();

                    TextBox8.Text = dt.Rows[0][7].ToString();
                    TextBox9.Text = dt.Rows[0][8].ToString();
                    TextBox10.Text = dt.Rows[0][9].ToString();
                    TextBox1.Text = dt.Rows[0][12].ToString();
                    TextBox3.Text = dt.Rows[0][13].ToString();

                    TextBox4.Text = dt.Rows[0][14].ToString();
                    TextBox5.Text = dt.Rows[0][15].ToString();
                    TextBox7.Text = dt.Rows[0][16].ToString();
                    TextBox11.Text = dt.Rows[0][19].ToString();
                    TextBox12.Text = dt.Rows[0][20].ToString();

                    TextBox13.Text = dt.Rows[0][21].ToString();
                    TextBox14.Text = dt.Rows[0][22].ToString();
                    TextBox15.Text = dt.Rows[0][23].ToString();
                    TextBox16.Text = dt.Rows[0][26].ToString();
                    TextBox17.Text = dt.Rows[0][27].ToString();

                    TextBox18.Text = dt.Rows[0][28].ToString();
                    TextBox19.Text = dt.Rows[0][29].ToString();
                    TextBox20.Text = dt.Rows[0][30].ToString();
                    TextBox21.Text = dt.Rows[0][33].ToString();
                    TextBox22.Text = dt.Rows[0][34].ToString();

                    TextBox23.Text = dt.Rows[0][35].ToString();
                    TextBox24.Text = dt.Rows[0][36].ToString();
                    TextBox25.Text = dt.Rows[0][37].ToString();
                    TextBox26.Text = dt.Rows[0][40].ToString();
                    TextBox27.Text = dt.Rows[0][41].ToString();

                    TextBox28.Text = dt.Rows[0][42].ToString();
                    TextBox29.Text = dt.Rows[0][43].ToString();
                    TextBox30.Text = dt.Rows[0][44].ToString();
                    TextBox31.Text = dt.Rows[0][47].ToString();
                    TextBox32.Text = dt.Rows[0][48].ToString();

                    TextBox33.Text = dt.Rows[0][49].ToString();
                    TextBox34.Text = dt.Rows[0][50].ToString();
                    TextBox35.Text = dt.Rows[0][51].ToString();
                    TextBox36.Text = dt.Rows[0][54].ToString();
                    TextBox37.Text = dt.Rows[0][55].ToString();

                    TextBox39.Text = dt.Rows[0][56].ToString();
                    TextBox40.Text = dt.Rows[0][57].ToString();
                    TextBox41.Text = dt.Rows[0][58].ToString();
                    TextBox42.Text = dt.Rows[0][61].ToString();
                    TextBox43.Text = dt.Rows[0][62].ToString();

                    TextBox44.Text = dt.Rows[0][63].ToString();
                    TextBox45.Text = dt.Rows[0][64].ToString();
                    TextBox46.Text = dt.Rows[0][65].ToString();
                    TextBox47.Text = dt.Rows[0][68].ToString();
                    TextBox48.Text = dt.Rows[0][69].ToString();

                    TextBox49.Text = dt.Rows[0][70].ToString();
                    TextBox50.Text = dt.Rows[0][71].ToString();
                    TextBox51.Text = dt.Rows[0][72].ToString();
                    TextBox52.Text = dt.Rows[0][75].ToString();
                    TextBox53.Text = dt.Rows[0][76].ToString();

              
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
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            clearForm();
        }
    }
}