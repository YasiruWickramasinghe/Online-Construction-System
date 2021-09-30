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
    public partial class WebForm5 : System.Web.UI.Page
    {
        DataTable dt;
        DataTable dt1;
        double totalprice;
        double totalamount;
        string totp;


        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            Button2.Visible = false;
            Button3.Visible = false;
            if (Session["estmid"] != null)
            {

                //Textbox5.Text = Session["estmid"] as String;
                //TextBox5.Text = Session["estmid"].ToString();
                // Response.Write(Name);

                TextBox5.Text = (string)Session["estmid"];


            }

            if (!IsPostBack)
            {
                TextBox5.Text = (string)Session["estmid"];

                dt = new DataTable();
                dt.Columns.Add("mid");
                dt.Columns.Add("materialname");
                dt.Columns.Add("quantity");
                dt.Columns.Add("unitprice");
                dt.Columns.Add("total");
                Session["data"] = dt;
                TextBox2.Text = "";





            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                dt = (DataTable)Session["data"];
                DataRow dr;
                dr = dt.NewRow();
                if (dt.Rows.Count > 0)
                {
                    dr["mid"] = TextBox2.Text;
                    dr["materialname"] = TextBox1.Text;
                    dr["quantity"] = TextBox3.Text;
                    dr["unitprice"] = TextBox4.Text;
                    totalprice = Convert.ToDouble(TextBox3.Text) * Convert.ToDouble(TextBox4.Text);
                    dr["total"] = totalprice.ToString();

                    totp = totalprice.ToString();

                    Button2.Visible = true;


                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("UPDATE [Estimation_Raw_Material] SET [material_name]= @material_name,[unit_price]=@unit_price,[estimated_quantity]=@estimated_quantity,[estimated_amount]= @estimated_amount WHERE ([Est_ID] = @Est_ID AND [MID] = @MID)", con);
                    //SqlCommand cmd = new SqlCommand("INSERT INTO Estimation_Raw_Material(Est_ID,TID,MID,material_name,unit_price,estimated_quantity,estimated_amount) values(@Est_ID,@TID,@MID,@material_name,@unit_price,@estimated_quantity,@estimated_amount)", con);
                    cmd.Parameters.AddWithValue("@Est_ID", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@TID", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@MID", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@material_name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@unit_price", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@estimated_quantity", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@estimated_amount", totp);
                    //cmd.Parameters.AddWithValue("@estimated_amount", GridView1.Rows[1].Cells[5].Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    //Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");


                }
                else
                {
                    dr["mid"] = TextBox2.Text;
                    dr["materialname"] = TextBox1.Text;
                    dr["quantity"] = TextBox3.Text;
                    dr["unitprice"] = TextBox4.Text;
                    totalprice = Convert.ToDouble(TextBox3.Text) * Convert.ToDouble(TextBox4.Text);
                    dr["total"] = totalprice.ToString();

                    totp = totalprice.ToString();

                    Button2.Visible = true;

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("UPDATE [Estimation_Raw_Material] SET [material_name]= @material_name,[unit_price]=@unit_price,[estimated_quantity]=@estimated_quantity,[estimated_amount]= @estimated_amount WHERE ([Est_ID] = @Est_ID AND [MID] = @MID)", con);
                    //SqlCommand cmd = new SqlCommand("INSERT INTO Estimation_Raw_Material(Est_ID,TID,MID,material_name,unit_price,estimated_quantity,estimated_amount) values(@Est_ID,@TID,@MID,@material_name,@unit_price,@estimated_quantity,@estimated_amount)", con);
                    cmd.Parameters.AddWithValue("@Est_ID", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@TID", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@MID", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@material_name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@unit_price", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@estimated_quantity", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@estimated_amount", totp);
                    //cmd.Parameters.AddWithValue("@estimated_amount", GridView1.Rows[1].Cells[4].Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();

                }
                dt.Rows.Add(dr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Session["buyitems"] = dt;
                TextBox2.Text = ""; //(dt.Rows.Count + 1).ToString();
                TextBox1.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                calculateSum();
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        private void calculateSum()
        {
            double grandtotal = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {

                grandtotal = grandtotal + Convert.ToDouble(row.Cells[4].Text); //Where Cells is the column. Just changed the index of cells
            }
            GridView1.FooterRow.Cells[3].Text = "Total Rs";
            GridView1.FooterRow.Cells[4].Text = grandtotal.ToString();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("UPDATE [Estimation] SET [Total_MaterialCost] = @Total_MaterialCost WHERE ([Est_ID] = @Est_ID)", con);
            // SqlCommand cmd = new SqlCommand("INSERT INTO Estimation(Est_ID,TID,Total_MaterialCost,Location,Status) values(@Est_ID,@TID,@Total_MaterialCost,@Location,@Status)", con);

            cmd.Parameters.AddWithValue("@Est_ID", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@TID", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@Total_MaterialCost", GridView1.FooterRow.Cells[4].Text.Trim());
            cmd.Parameters.AddWithValue("@Location", TextBox7.Text.Trim());
            cmd.Parameters.AddWithValue("@Status", "Pending");




            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Material estimation details have successfully updated');</script>");
        }

        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_master_table where member_id='" + TextBox1.Text.Trim() + "';", con);
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                Button2.Visible = true;
                DataTable dt = (DataTable)Session["data"];
                int count = dt.Rows.Count;
                int lastraw = GridView1.Rows.Count - 1;
                if (count >= 1)
                {
                    dt.Rows[count - 1].Delete();

                }
                Session["data"] = dt;

                String mid = GridView1.Rows[lastraw].Cells[0].Text;
                String eid = TextBox5.Text.Trim();


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string query = "Delete  From [Estimation_Raw_Material] where Est_ID = '" + TextBox5.Text + "' AND MID ='" + GridView1.Rows[lastraw].Cells[0].Text + "'";
                //string query1 = "Delete From [Estimation] where Est_ID = '" + TextBox1.Text + "'";
                SqlCommand com = new SqlCommand(query, con);
                //SqlCommand com1 = new SqlCommand(query1, con);

                com.ExecuteNonQuery();
                // com1.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Deleted!');</script>");

                GridView1.DataSource = dt;
                GridView1.DataBind();
                calculateSum();
                Console.WriteLine(mid);
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}