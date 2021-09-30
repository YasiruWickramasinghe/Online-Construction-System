using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Construction_Project
{
    public partial class HR_EmployeeManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getEmployeeByID();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteEmployee();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            updateEmployee();
        }

        bool checkEmployeeExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM Permanent_Employee WHERE EmployeeID ='" + TextBox1.Text.Trim() + "'", con);
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

        void getEmployeeByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Permanent_Employee WHERE EmployeeID = '" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox1.Text = dr.GetValue(0).ToString();
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox6.Text = dr.GetValue(3).ToString();
                        TextBox7.Text = dr.GetValue(4).ToString();
                        TextBox8.Text = dr.GetValue(5).ToString();
                        TextBox4.Text = dr.GetValue(6).ToString();
                        TextBox5.Text = dr.GetValue(7).ToString();
                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void deleteEmployee()
        {
            if (checkEmployeeExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE FROM Permanent_Employee WHERE EmployeeID = '" + TextBox1.Text.Trim() + "' ", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Employee Deleted Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }

        void updateEmployee()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Permanent_Employee " +
                    "SET  Designation = '" + TextBox4.Text + "' " +
                    "WHERE EmployeeID = '" + TextBox1.Text.Trim() + "'", con);

                int result = cmd.ExecuteNonQuery();
                con.Close();

                if (result > 0)
                {
                    Response.Write("<script>alert('Employee Details Updated Successfully');</script>");
                    getEmployeeByID();
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script> alert('Invalid entry'); </script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "'); </script>");
            }
        }

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
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            /*Paragraph para = new Paragraph("International Construction Consortium (Pvt) Ltd", FontFactory.GetFont("Arial", 25, iTextSharp.text.Font.BOLD));
            para.Alignment = Element.ALIGN_CENTER;

            Paragraph para1 = new Paragraph("70 S De S. Jayasinghe Mawatha, Nugegoda", FontFactory.GetFont("Arial", 15, iTextSharp.text.Font.BOLD));
            para1.Alignment = Element.ALIGN_CENTER;

            Paragraph para2 = new Paragraph("Employee Details Report", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            para2.Alignment = Element.ALIGN_CENTER;

            Paragraph para3 = new Paragraph(" ", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));

            iTextSharp.text.Image png = iTextSharp.text.Image.GetInstance("C:/Users/Nirmani/source/repos/Permenant_Employee_Management/Permenant_Employee_Management/imgs/icc-logo.png");
            png.ScaleToFit(200f, 200f);
            png.Alignment = Element.ALIGN_LEFT;

            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename = EmployeeDetails.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            GridView1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A3, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();

            pdfDoc.Add(png);
            pdfDoc.Add(para);
            pdfDoc.Add(para1);
            pdfDoc.Add(para3);
            pdfDoc.Add(para2);
            pdfDoc.Add(para3);

            htmlparser.Parse(sr);

            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
            GridView1.AllowPaging = true;
            GridView1.DataBind();*/
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

    }
}