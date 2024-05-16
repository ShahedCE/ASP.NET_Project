using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_True_Care
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (Session["role"].Equals(""))  //if "" blanck , nobody has entered or logeed in so there is no user
                {
                    //show//
                    LinkButton1.Visible = true; //user login button
                    LinkButton2.Visible = true;//sign up
                    LinkButton6.Visible = true;//admin log in

                    LinkButton3.Visible = false;//logout
                    LinkButton7.Visible = false;//hello user message
                    LinkButton10.Visible = false;// all admin activity is hidden.Visible = false;//patient management
                    LinkButton4.Visible = false;
                }

                else if (Session["role"].Equals("user"))  //after Logging in
                {
                    LinkButton1.Visible = false; //user login button
                    LinkButton2.Visible = false;//sign up
                    LinkButton3.Visible = true;//logout
                    LinkButton4.Visible = true;

                    LinkButton7.Text = "Hello " + Session["name"].ToString();//hello user message

                    LinkButton6.Visible = true;//admin log in as he could be a user
                    LinkButton10.Visible = false; ;// all admin activity is hidden.Visible = false;// all admin activity is hidden

                }
                else if (Session["role"].Equals("admin"))  //after Logging in
                {
                    LinkButton1.Visible = false; //user login button
                    LinkButton2.Visible = false;//sign up
                    LinkButton3.Visible = true;//logout
                    LinkButton4.Visible = true;

                    LinkButton7.Text = "Hello Admin";//hello user message

                    LinkButton6.Visible = false;//admin log in as he could be a user
                    LinkButton10.Visible = true;// all admin activity is hidden

                }

            }
            catch (Exception ex)
            {

            }

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");

        }


        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("appoinmentlist.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["id"] = "";
            Session["name"] = "";
            Session["role"] = "";// role of user either  user or admin or member       

            //show//
            LinkButton1.Visible = true; //user login button
            LinkButton2.Visible = true;//sign up
            LinkButton6.Visible = true;//admin log in

            LinkButton3.Visible = false;//logout
            LinkButton7.Visible = false;//hello user message
            LinkButton10.Visible = false;// all admin activity is 


        }

        protected void LinkButton10_Click1(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }
}
