using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_True_Care
{
    public partial class WebForm4 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString; //connection string

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
                SqlCommand cmd = new SqlCommand("  SELECT * FROM UserInfo WHERE User_ID='"+ TextBox1.Text.Trim()+ "' AND Password='"+TextBox2.Text.Trim()+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successfull');</script>");
                        //Session variables
                        Session["id"] = dr.GetValue(0).ToString();
                        Session["name"] = dr.GetValue(1).ToString();
                        Session["role"] = "user";// role of user either  user or admin or member       
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