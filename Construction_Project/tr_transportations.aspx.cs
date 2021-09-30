using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Construction_Project
{
    public partial class tr_transportations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("tr_insert_transportations.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("tr_update_transportations.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("tr_delete_transportations.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}