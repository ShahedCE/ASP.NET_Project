using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_True_Care
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("cbccost.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("bmpcost.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("cmpcost.aspx");

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("lipidcost.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("ltfcost.aspx");

        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("rfcost.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("tftcost.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("uacost.aspx");

        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            Response.Redirect("glucosecost.aspx");

        }

      
    }
}