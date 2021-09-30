using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Construction_Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*try
            {
                //check which link of user has login to the website

                if (Session["role"].Equals(" "))
                {
                    LinkButton1.Visible = true;//user login link button
                    LinkButton8.Visible = true;//SignUp link button
                    LinkButton2.Visible = false;//Logout link button
                    LinkButton9.Visible = false;//hello userlink button
                    
                }
                else if (Session["role"].Equals("User"))
                {
                    LinkButton1.Visible = false;//user login link button
                    LinkButton8.Visible = false;//SignUp link button
                    LinkButton2.Visible = true;//Logout link button
                    LinkButton9.Visible = true;//hello userlink button
                    LinkButton9.Text = "Hello " + Session["Username"].ToString();

                }
            }
            catch(Exception ex)
            {

            }*/

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("SiteHome.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cus_login.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cus_signup.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["Username"] = "";
            Session["Name"] = "";
            Session["role"] = "";
            Session["status"] = "";


            LinkButton1.Visible = true;//user login link button
            LinkButton8.Visible = true;//SignUp link button
            LinkButton2.Visible = false;//Logout link button
            LinkButton9.Visible = false;//hello userlink button

            Response.Redirect("SiteHome.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("supplierlogin.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeLogin.aspx");
        }

    }
}