using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace Construction_Project
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["estmid"] != null)
            {

                //Textbox5.Text = Session["estmid"] as String;
                //TextBox5.Text = Session["estmid"].ToString();
                // Response.Write(Name);

                Label3.Text = (string)Session["estmid"];



            }


            if (Session["estimationdate"] != null)
            {

                //Textbox5.Text = Session["estmid"] as String;
                //TextBox5.Text = Session["estmid"].ToString();
                // Response.Write(Name);

                Label5.Text = (string)Session["estimationdate"];


            }
            if (Session["customername"] != null)
            {

                //Textbox5.Text = Session["estmid"] as String;
                //TextBox5.Text = Session["estmid"].ToString();
                // Response.Write(Name);

                Label6.Text = (string)Session["customername"];


            }

            if (Session["customeremail"] != null)
            {

                //Textbox5.Text = Session["estmid"] as String;
                //TextBox5.Text = Session["estmid"].ToString();
                // Response.Write(Name);

                Label7.Text = (string)Session["customeremail"];


            }


            // Label3.Text = Request.QueryString["Est_ID"];
            // Label3.Text = "E505";
            Label4.Text = Label3.Text;
            //findcustomername();
            //findaddress(Label4.Text);
            showgrid(Label4.Text);
            showgrid2(Label4.Text);
            addtotal(Label8.Text, Label9.Text);


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //exportpdf();


        }

        private void exportpdf()
        {
           /* Paragraph para2 = new Paragraph("International Construction Consortium (PVT) Ltd", FontFactory.GetFont("Arial", 30, iTextSharp.text.Font.BOLD));
            para2.Alignment = Element.ALIGN_CENTER;
            Paragraph para = new Paragraph("Estimation Details Report", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));
            para.Alignment = Element.ALIGN_CENTER;
            Paragraph para3 = new Paragraph("No 70 S De S, Jayasinghe Mawatha, Nugegoda Tel:011 4400600", FontFactory.GetFont("Arial", 15, iTextSharp.text.Font.BOLD));
            para3.Alignment = Element.ALIGN_CENTER;
            iTextSharp.text.Image png = iTextSharp.text.Image.GetInstance("E:/ITP MAIN PROJECT INTERGRATION tharushika/ITP MAIN PROJECT INTERGRATION tharushika/Construction_Project/imgs/lg.png");
            png.ScaleToFit(100f, 100f);
            png.Alignment = Element.ALIGN_CENTER;
            Paragraph para1 = new Paragraph(" ", FontFactory.GetFont("Arial", 20, iTextSharp.text.Font.BOLD));

            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=EstimationReport.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A3, 10f, 10f, 100f, 0f);
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
            Response.End();


        }
        private void findorderdate(String Orderid)

        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            String myquery = "Select * from Estimation_Raw_Material where Est_ID='" + Orderid + "'";
            SqlCommand cmd = new SqlCommand();
            //SqlCommand com1 = new SqlCommand(query1, con);

            // com.ExecuteNonQuery();
            // com1.ExecuteNonQuery();
            //con.Close();




            //String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=ShoppingData; Integrated Security=True";


            // SqlConnection con = new SqlConnection(mycon);
            //SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label6.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();

            }

            con.Close();
        }
        private void findaddress(String Orderid)
        {
            String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=ShoppingData; Integrated Security=True";
            String myquery = "Select * from OrderAddress where orderid='" + Orderid + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label7.Text = ds.Tables[0].Rows[0]["address"].ToString();

            }

            con.Close();
        }

        private void findcustomername()
        {
            if (Session["customername"] != null)
            {



                Label6.Text = (string)Session["customername"];


            }

        }

        private void showgrid(String orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add("Est_ID");
            dt.Columns.Add("TID");
            dt.Columns.Add("MID");
            dt.Columns.Add("material_name");
            dt.Columns.Add("unit_price");
            dt.Columns.Add("estimated_quantity");

            dt.Columns.Add("estimated_amount");
            // String mycon = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=ShoppingData;Integrated Security=True";
            String mycon = "Data Source=LAPTOP-5D763AI2\\CHAMODISQL;Initial Catalog=Construction_Company;Integrated Security=true";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from Estimation_Raw_Material where Est_ID='" + orderid + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            double grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["Est_ID"] = ds.Tables[0].Rows[i]["Est_ID"].ToString();
                dr["TID"] = ds.Tables[0].Rows[i]["TID"].ToString();
                dr["MID"] = ds.Tables[0].Rows[i]["MID"].ToString();
                dr["material_name"] = ds.Tables[0].Rows[i]["material_name"].ToString();
                dr["unit_price"] = ds.Tables[0].Rows[i]["unit_price"].ToString();
                dr["estimated_quantity"] = ds.Tables[0].Rows[i]["estimated_quantity"].ToString();
                double unit_price = Convert.ToDouble(ds.Tables[0].Rows[i]["unit_price"].ToString());
                double estimated_quantity = Convert.ToDouble(ds.Tables[0].Rows[i]["estimated_quantity"].ToString());
                double estimated_amount = unit_price * estimated_quantity;
                dr["estimated_amount"] = estimated_amount;
                grandtotal = grandtotal + estimated_amount;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

            Label8.Text = grandtotal.ToString();
        }

        private void showgrid2(String orderid)
        {


            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add("Est_ID");
            dt.Columns.Add("TID");
            dt.Columns.Add("LRID");
            dt.Columns.Add("Labour_Role");
            dt.Columns.Add("Salary_Per_day");
            dt.Columns.Add("No_of_days");
            dt.Columns.Add("No_of_workers");
            dt.Columns.Add("amount");
            // String mycon = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=ShoppingData;Integrated Security=True";
            String mycon = "Data Source=LAPTOP-5D763AI2\\CHAMODISQL;Initial Catalog=Construction_Company;Integrated Security=true";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from Estimation_LabourRole where Est_ID='" + orderid + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            double grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["Est_ID"] = ds.Tables[0].Rows[i]["Est_ID"].ToString();
                dr["TID"] = ds.Tables[0].Rows[i]["TID"].ToString();
                dr["LRID"] = ds.Tables[0].Rows[i]["LRID"].ToString();
                dr["Labour_Role"] = ds.Tables[0].Rows[i]["Labour_Role"].ToString();
                dr["Salary_Per_day"] = ds.Tables[0].Rows[i]["Salary_Per_day"].ToString();
                dr["No_of_days"] = ds.Tables[0].Rows[i]["No_of_days"].ToString();
                dr["No_of_workers"] = ds.Tables[0].Rows[i]["No_of_workers"].ToString();
                double Salary_Per_day = Convert.ToDouble(ds.Tables[0].Rows[i]["Salary_Per_day"].ToString());
                double No_of_days = Convert.ToDouble(ds.Tables[0].Rows[i]["No_of_days"].ToString());
                double No_of_workers = Convert.ToDouble(ds.Tables[0].Rows[i]["No_of_workers"].ToString());
                double amount = Salary_Per_day * No_of_days * No_of_workers;
                dr["amount"] = amount;
                grandtotal = grandtotal + amount;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView2.DataSource = dt;
            GridView2.DataBind();

            Label9.Text = grandtotal.ToString();





            */



        }

        private void findorderdate(String Orderid)

        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            String myquery = "Select * from Estimation_Raw_Material where Est_ID='" + Orderid + "'";
            SqlCommand cmd = new SqlCommand();
            //SqlCommand com1 = new SqlCommand(query1, con);

            // com.ExecuteNonQuery();
            // com1.ExecuteNonQuery();
            //con.Close();




            //String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=ShoppingData; Integrated Security=True";


            // SqlConnection con = new SqlConnection(mycon);
            //SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label6.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();

            }

            con.Close();
        }
        private void findaddress(String Orderid)
        {
            String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=ShoppingData; Integrated Security=True";
            String myquery = "Select * from OrderAddress where orderid='" + Orderid + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label7.Text = ds.Tables[0].Rows[0]["address"].ToString();

            }

            con.Close();
        }

        private void findcustomername()
        {
            if (Session["customername"] != null)
            {



                Label6.Text = (string)Session["customername"];


            }

        }

        private void showgrid(String orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add("Est_ID");
            dt.Columns.Add("TID");
            dt.Columns.Add("MID");
            dt.Columns.Add("material_name");
            dt.Columns.Add("unit_price");
            dt.Columns.Add("estimated_quantity");

            dt.Columns.Add("estimated_amount");
            // String mycon = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=ShoppingData;Integrated Security=True";
            String mycon = "Data Source=LAPTOP-5D763AI2\\CHAMODISQL;Initial Catalog=Construction_Company;Integrated Security=true";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from Estimation_Raw_Material where Est_ID='" + orderid + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            double grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["Est_ID"] = ds.Tables[0].Rows[i]["Est_ID"].ToString();
                dr["TID"] = ds.Tables[0].Rows[i]["TID"].ToString();
                dr["MID"] = ds.Tables[0].Rows[i]["MID"].ToString();
                dr["material_name"] = ds.Tables[0].Rows[i]["material_name"].ToString();
                dr["unit_price"] = ds.Tables[0].Rows[i]["unit_price"].ToString();
                dr["estimated_quantity"] = ds.Tables[0].Rows[i]["estimated_quantity"].ToString();
                double unit_price = Convert.ToDouble(ds.Tables[0].Rows[i]["unit_price"].ToString());
                double estimated_quantity = Convert.ToDouble(ds.Tables[0].Rows[i]["estimated_quantity"].ToString());
                double estimated_amount = unit_price * estimated_quantity;
                dr["estimated_amount"] = estimated_amount;
                grandtotal = grandtotal + estimated_amount;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

            Label8.Text = grandtotal.ToString();
        }

        private void showgrid2(String orderid)
        {


            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add("Est_ID");
            dt.Columns.Add("TID");
            dt.Columns.Add("LRID");
            dt.Columns.Add("Labour_Role");
            dt.Columns.Add("Salary_Per_day");
            dt.Columns.Add("No_of_days");
            dt.Columns.Add("No_of_workers");
            dt.Columns.Add("amount");
            // String mycon = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=ShoppingData;Integrated Security=True";
            String mycon = "Data Source=LAPTOP-5D763AI2\\CHAMODISQL;Initial Catalog=Construction_Company;Integrated Security=true";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from Estimation_LabourRole where Est_ID='" + orderid + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            double grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["Est_ID"] = ds.Tables[0].Rows[i]["Est_ID"].ToString();
                dr["TID"] = ds.Tables[0].Rows[i]["TID"].ToString();
                dr["LRID"] = ds.Tables[0].Rows[i]["LRID"].ToString();
                dr["Labour_Role"] = ds.Tables[0].Rows[i]["Labour_Role"].ToString();
                dr["Salary_Per_day"] = ds.Tables[0].Rows[i]["Salary_Per_day"].ToString();
                dr["No_of_days"] = ds.Tables[0].Rows[i]["No_of_days"].ToString();
                dr["No_of_workers"] = ds.Tables[0].Rows[i]["No_of_workers"].ToString();
                double Salary_Per_day = Convert.ToDouble(ds.Tables[0].Rows[i]["Salary_Per_day"].ToString());
                double No_of_days = Convert.ToDouble(ds.Tables[0].Rows[i]["No_of_days"].ToString());
                double No_of_workers = Convert.ToDouble(ds.Tables[0].Rows[i]["No_of_workers"].ToString());
                double amount = Salary_Per_day * No_of_days * No_of_workers;
                dr["amount"] = amount;
                grandtotal = grandtotal + amount;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView2.DataSource = dt;
            GridView2.DataBind();

            Label9.Text = grandtotal.ToString();









        }

        public void addtotal(String em, String el)
        {


            double em1 = Double.Parse(em);
            double el1 = Double.Parse(el);
            double tot = em1 + el1;

            Label10.Text = tot.ToString();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["customeremail"] = Label7.Text;
            Response.Redirect("c_email.aspx");
        }
    }
}