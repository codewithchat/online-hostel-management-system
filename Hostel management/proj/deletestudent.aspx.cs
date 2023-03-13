using System;
using System.Data.SqlClient;

namespace Hostel_management.proj
{
    public partial class deletestudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int h = 0;
            string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Hostel management\Hostel management\App_Data\mydatabase.mdf;Integrated Security=True";
            SqlConnection a = new SqlConnection(s);
            string k = "select * from addstudent";
            SqlCommand g = new SqlCommand(k, a);
            a.Open();
            SqlDataReader n = g.ExecuteReader();
            h = 2;
            while (n.Read())
            {

                if (TextBox1.Text == Convert.ToString(n.GetInt32(0)))
                {

                    TextBox2.Text = n.GetString(1);
                    TextBox3.Text = n.GetString(2);
                    TextBox4.Text = n.GetString(3);
                    h = 1;

                }


            }
            if (h == 1)
            {
            }
            else
            {

                Response.Write("<script>alert('No Student Found');</script>");

                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Hostel management\Hostel management\App_Data\mydatabase.mdf;Integrated Security=True";
            SqlConnection a = new SqlConnection(s);
            string k = "delete from addstudent where student_id=" + TextBox1.Text + "";
            SqlCommand g = new SqlCommand(k, a);
            a.Open();
            int j= g.ExecuteNonQuery();
            if (j == 1)
            {
                Response.Write("<Script>alert('Delete Student Successfully');</Script>");

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
               
                
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}