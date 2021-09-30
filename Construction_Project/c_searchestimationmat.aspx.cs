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
    public partial class WebForm4 : System.Web.UI.Page


    {

        public SqlConnection con;
        string str;

        //  public SqlConnection con1;
        //public string constr;

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        //string strcon1 = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;

            Label3.Visible = false;
            Label4.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
        }


        private void rep_bind()

        {

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }



            string query = "select * from Estimation_Raw_Material where Est_ID = '" + TextBox1.Text + "'";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            string query = "select * from Estimation_Raw_Material where Est_ID = '" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(query, con);

            SqlDataReader dr;
            dr = com.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();

                rep_bind();
                GridView1.Visible = true;
                Label4.Visible = true;
                Label3.Visible = true;
                Button2.Visible = true;
                Button3.Visible = true;


                displayTotal();

                //TextBox1.Text = "";
                Label2.Text = "";


            }
            else
            {
                GridView1.Visible = false;
                Label2.Visible = true;
                Label2.Text = "The search Term " + TextBox1.Text + " &nbsp;Is Not Available in the Records"; ;

            }



        }

        protected void displayTotal()
        {
            try
            {
                SqlCommand com;
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();


                }

                str = "select (Total_MaterialCost) from Estimation where Est_ID = '" + TextBox1.Text + "'";
                com = new SqlCommand(str, con);
                SqlDataReader reader = com.ExecuteReader();

                reader.Read();
                Label3.Text = reader["Total_MaterialCost"].ToString();

                reader.Close();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["estmid"] = TextBox1.Text;
            Response.Redirect("c_updatematestimation.aspx");
        }




        protected void Button3_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            string query = "Delete  From [Estimation_Raw_Material] where Est_ID = '" + TextBox1.Text + "'";
            string query2 = "Delete  From [Estimation_LabourRole] where Est_ID = '" + TextBox1.Text + "'";
            string query1 = "Delete From [Estimation] where Est_ID = '" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(query, con);
            SqlCommand com1 = new SqlCommand(query1, con);
            SqlCommand com2 = new SqlCommand(query2, con);

            com.ExecuteNonQuery();
            com1.ExecuteNonQuery();
            com2.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Estimation has deleted!');</script>");
            GridView1.Visible = false;


        }




    }
}