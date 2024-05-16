using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_True_Care
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("  SELECT * FROM AdminInfo WHERE Admin_ID='"+TextBox1.Text.Trim() +"' AND Admin_Password='"+TextBox2.Text.Trim() +"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)   //chekhing the id password if has
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");

                        //Session variables
                        Session["id"] = dr.GetValue(0).ToString();
                        Session["name"] = dr.GetValue(1).ToString();
                        Session["role"] = "admin";// role of user either  user or admin or member       
                    }
                     Response.Redirect("home.aspx");

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
    }
}