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
    
    public partial class ToolManagement : System.Web.UI.Page
    {


        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;



        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

        }


        //Add My first button click

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (checkIfToolExists())
            {
                Response.Write("<script>alert('Tool with this ID already Exist. You cannot add another Tool with the same Author ID');</script>");
            }
            else
            {
                addNewTool();
            }

        }


        //Go Button Click

        protected void Button1_Click(object sender, EventArgs e)
        {
            getToolByID();
        }




        //Update Button

        protected void Button3_Click1(object sender, EventArgs e)
        {
            if (checkIfToolExists())
            {
                updateTool();

            }
            else
            {
                Response.Write("<script>alert('Item does not exist at the current Inventory');</script>");
            }
        }


        //Delete Button

        protected void Button4_Click1(object sender, EventArgs e)
        {
            if (checkIfToolExists())
            {
                deleteTool();

            }
            else
            {
                Response.Write("<script>alert('Author does not exist');</script>");
            }
        }

        // User Defined Function


        bool checkIfToolExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tool_management_tbl where tool_id='" + TextBox1.Text.Trim() + "';", con);
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
        void addNewTool()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO tool_management_tbl(tool_id,tool_dis) values(@tool_id,@tool_dis)", con);

                cmd.Parameters.AddWithValue("@tool_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@tool_dis", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Tool Added To the Inventory Successfully');</script>");
                clearForm(); 
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }




        // User Defined Function

        void updateTool()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE tool_management_tbl SET tool_dis=@tool_dis WHERE tool_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@tool_dis", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Inventory Item Updated Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        // User Defined Function
        void deleteTool()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from tool_management_tbl WHERE tool_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Inventory Item Deleted Successfully');</script>");
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
        }



        // user defined function
        void getToolByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tool_management_tbl where tool_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Sorry This Inventory ID Doesn't exist');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }




    }
}


// Thank you R.K Work !