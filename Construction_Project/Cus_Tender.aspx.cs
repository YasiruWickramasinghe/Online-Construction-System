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
    public partial class Cus_Tender : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                Response.Write("<script>alert('Account Number is Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                tender();
            }
        }

        // user defined method
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Tender where NIC='" + TextBox1.Text.Trim() + "';", con);

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
        void tender()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Tender(NIC,Address,Location,floors,sqfeet,expecteddate,buildingtype) values(@NIC,@Address,@Location,@floors,@sqfeet,@expecteddate,@buildingtype)", con);

                cmd.Parameters.AddWithValue("@NIC", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Location", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@floors", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@sqfeet", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@expecteddate", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@buildingtype", DropDownList1.SelectedItem.Value);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successful Inserted. Thank you');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cus_payment.aspx");
        }

    }
}