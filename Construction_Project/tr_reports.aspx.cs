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
    public partial class tr_reports : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //real time data hadle
            GridView1.DataBind();
        }

        //generate
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfReportIdExists())
            {
                Response.Write("<script>alert('This Transport ID is already exists.');</script>");
            }
            else
            {
                calculateReport();
                InsertTransportationReport();
            }
        }
        //delete button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfReportIdExists())
            {
                DeleteTransportReport();
            }
            else
            {
                Response.Write("<script>alert('Transport ID is does not exists');</script>");
            }
        }

        //user define function

        //check if REport ID already Exists
        bool checkIfReportIdExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from tr_transportation_report where report_id='" + TextBox1.Text.Trim() + "';", con);

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

        //generate report
        void calculateReport()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tr_transportation where date between @date1 AND @date2;", con);

                cmd.Parameters.AddWithValue("@date1", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@date2", TextBox3.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                //calculate  report
                Label1.Text = dt.Compute("Count(transport_id)", "").ToString();
                Label2.Text = dt.Compute("Sum(material_size)", "").ToString();

                Label3.Text = dt.Compute("Count(material)", "material='Iron'").ToString();
                Label4.Text = dt.Compute("Count(material)", "material='Sand'").ToString();
                Label5.Text = dt.Compute("Count(material)", "material='Wood'").ToString();
                Label6.Text = dt.Compute("Count(material)", "material='Cements'").ToString();
                Label7.Text = dt.Compute("Count(material)", "material='Stone'").ToString();

                //clear placeholders after generate
                ClearPlaceHolders();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        //add to database
        void InsertTransportationReport()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO tr_transportation_report(report_id,tot_trans,sum_materi_size,tot_iron,tot_sand,tot_wood,tot_cements,tot_stone) values(@report_id,@tot_trans,@sum_materi_size,@tot_iron,@tot_sand,@tot_wood,@tot_cements,@tot_stone)", con);

                cmd.Parameters.AddWithValue("@report_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@tot_trans", Label1.Text.Trim());
                cmd.Parameters.AddWithValue("@sum_materi_size", Label2.Text.Trim());
                cmd.Parameters.AddWithValue("@tot_iron", Label3.Text.Trim());
                cmd.Parameters.AddWithValue("@tot_sand", Label4.Text.Trim());
                cmd.Parameters.AddWithValue("@tot_wood", Label5.Text.Trim());
                cmd.Parameters.AddWithValue("@tot_cements", Label6.Text.Trim());
                cmd.Parameters.AddWithValue("@tot_stone", Label7.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('REPORT HAS BEEN GENERATED SCCESSFULLY');</script>");
                GridView1.DataBind();
                //clear placeholders after deleted
                ClearPlaceHolders();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //Delete Report function
        void DeleteTransportReport()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM tr_transportation_report WHERE report_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('TRANSPORT REPORT DELETED SCCESSFULLY');</script>");
                //real time data hadle
                GridView1.DataBind();
                //clear placeholders after deleted
                ClearPlaceHolders();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //Clear form Placeholders after the action's
        void ClearPlaceHolders()
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}