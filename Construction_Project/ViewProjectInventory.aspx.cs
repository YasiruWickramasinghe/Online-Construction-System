

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
    public partial class ViewProjectInventory : System.Web.UI.Page
    {
        public object PageSize { get; private set; }
        public object PdfWriter { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }



        public override void VerifyRenderingInServerForm(Control control)
        {
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            /*
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=employeeDetails.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView1.RenderControl(htw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparse.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
            GridView1.AllowPaging = true;
            GridView1.DataBind();

    */

/*
            Paragraph para = new Paragraph("International Construction Consortium (Pvt) Ltd", FontFactory.GetFont("Arial", 25, iTextSharp.text.Font.BOLD));
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














    }
}