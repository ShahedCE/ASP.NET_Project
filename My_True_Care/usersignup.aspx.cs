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
     

    public partial class WebForm5 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //sign up button click event
        protected void Button7_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {
                Response.Write("<script>alert('User Already Exist with this ID,Please try other ID');</script>");

            }

            else
            {
                signUpNewUser();  // calling the function from the last

            }
        }

        //user defined

        bool checkUserExists()
        {

            
            try
            {
                SqlConnection con = new SqlConnection(strcon);  //created the con object of sql connection type by new
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();  //checking  the connection is open or not in try & catch
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM UserInfo WHERE User_ID='" +TextBox6.Text.Trim()+ "' ", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);     //disconnected architechture,table connects gets values and the disconnects
                DataTable dt = new DataTable();  //matched data will saved into datatable dt then check
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


                Response.Write("<script>alert('" + ex.Message + "');</script>"); // exact exeption will be shown by ex

                return false;
            }

          

        }




        void signUpNewUser()
        {

            //Response.Write("<script>alert('Testing');</script>");// to give a pop up message using js
            try
            {
                SqlConnection con = new SqlConnection(strcon);  //created the con object of sql connection type by new
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();  //checking  the connection is open or not in try & catch
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO UserInfo (User_ID,User_Name,Password,Email,Birthday,City,Full_address) values (@userid,@name,@pass,@email,@birth,@city,@add) ", con);
                SqlCommand cmd1 = new SqlCommand("INSERT INTO UserContact (User_ID,Phone) values (@userid,@phone) ", con);


                cmd.Parameters.AddWithValue("@userid", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@pass", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@birth", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@city", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@add", TextBox5.Text.Trim());


                cmd1.Parameters.AddWithValue("@userid", TextBox6.Text.Trim());
                cmd1.Parameters.AddWithValue("@phone", TextBox3.Text.Trim());

                cmd.ExecuteNonQuery();
                cmd1.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Sign in successfull.Go to User Login to Log in');</script>");
            }
            catch (Exception ex)
            {


                Response.Write("<script>alert('" + ex.Message + "');</script>"); // exact exeption will be shown by ex


            }
        }


    }
}