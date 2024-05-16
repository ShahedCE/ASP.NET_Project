using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_True_Care
{
    public partial class WebForm27 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-FV075RRK\\SQLEXPRESS;Initial Catalog=TrueCareDB;Integrated Security=True;Encrypt=False");

            try
            {
                con.Open();
                SqlCommand comm = new SqlCommand("INSERT INTO PaymentInfo VALUES (@Param1, @Param2, @Param3, @Param4, @Param5, @Param6 )", con);
                comm.Parameters.AddWithValue("@Param1", TextBox5.Text);
                comm.Parameters.AddWithValue("@Param2", TextBox1.Text);
                comm.Parameters.AddWithValue("@Param3", TextBox2.Text);
                comm.Parameters.AddWithValue("@Param4", TextBox3.Text);
                comm.Parameters.AddWithValue("@Param5", TextBox6.Text);
                comm.Parameters.AddWithValue("@Param6", TextBox4.Text);

                //comm.Parameters.AddWithValue("@Param11", TextBox8.Text);
                int rowsAffected = comm.ExecuteNonQuery();
                con.Close();

                if (rowsAffected > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Payment Completed');", true);
                    Response.Redirect("done.aspx");
                }

                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Insertion Failed');", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('An error occurred: " + ex.Message + "');", true);
            }
        }
    }
}