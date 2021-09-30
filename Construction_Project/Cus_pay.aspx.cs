using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;

namespace Construction_Project
{
    public partial class Cus_pay : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfCustomerExists())
            {
                deleteCustomer();
            }
            else
            {
                Response.Write("<script>alert('cananot delete');</script>");

            }
        }

        //user definr function
        void deleteCustomer()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from CustomerPayment  WHERE AccountNo= '" + TextBox3.Text + "'", con);



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('delete Successful!!!');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfCustomerExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from CustomerPayment where AccountNo='" + TextBox3.Text.Trim() + "';", con);

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

        void clearForm()
        {
            TextBox3.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            /*Paragraph para2 = new Paragraph("International Construction Consortium (Pvt) Ltd", FontFactory.GetFont("Arial", 30, iTextSharp.text.Font.BOLD));
            para2.Alignment = Element.ALIGN_CENTER;
            Paragraph para = new Paragraph("Customer Payment Details Report", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            para.Alignment = Element.ALIGN_CENTER;
            Paragraph para3 = new Paragraph("No 70 S De S. Jayasinghe Mawatha, Nugegoda 10250, Tel 011 4400600", FontFactory.GetFont("Arial", 15, iTextSharp.text.Font.BOLD));
            para3.Alignment = Element.ALIGN_CENTER;
            iTextSharp.text.Image png = iTextSharp.text.Image.GetInstance("C:/Users/IMAKA/Desktop/ITP Project/images/m.png");
            png.ScaleToFit(100f, 100f);
            png.Alignment = Element.ALIGN_BASELINE;
            Paragraph para1 = new Paragraph(" ", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=GridViewData.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            GridView1.AllowPaging = false;
            GridView1.DataBind();
            GridView1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A2, 7f, 7f, 7f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            pdfDoc.Add(para2);
            pdfDoc.Add(para);
            pdfDoc.Add(para3);
            pdfDoc.Add(png);
            pdfDoc.Add(para1);
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();*/
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
    }
}