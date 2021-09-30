using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Construction_Project
{
    public partial class incomeStatement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["income"].ToString();
            Label3.Text = Session["transport"].ToString();
            Label4.Text = Session["inventory"].ToString();
            Label5.Text = Session["emp"].ToString();
            Label6.Text = Session["tax"].ToString();
            Label7.Text = Session["profit"].ToString();

            Label8.Text = Session["EDate"].ToString();
            Label9.Text = Session["sDate"].ToString();
            Label10.Text = Session["EDate"].ToString();


        }

    }
}