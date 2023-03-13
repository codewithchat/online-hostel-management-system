using System;
using System.Data.SqlClient;

namespace Hostel_management.proj
{
    public partial class roomallot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int h = 0,i=0;
            string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Hostel management\Hostel management\App_Data\mydatabase.mdf;Integrated Security=True";

            SqlConnection a = new SqlConnection(s);
            string k = "select * from roomallot where Room_no='"+TextBox1.Text+"' ";
            SqlCommand g = new SqlCommand(k, a);
            a.Open();
            SqlDataReader n = g.ExecuteReader();
            while (n.Read())
            {
                i = i + 1;
            }
            if (i == 2)
            {
                Response.Write("<script>alert('Room is full');</script>");
            }
            else
            {
                a.Close();
                k = "select * from addroom";
                g = new SqlCommand(k, a);
                a.Open();
                n = g.ExecuteReader();
                while (n.Read())
                {

                    if (TextBox1.Text == n.GetString(1))
                    {

                        TextBox2.Text = n.GetString(0);

                        h = 1;

                    }
                }
                if (h == 1)
                {
                }
                else
                {

                    Response.Write("<script>alert('No Room Found');</script>");

                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int h = 0,l=0;
            string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Hostel management\Hostel management\App_Data\mydatabase.mdf;Integrated Security=True";
            SqlConnection a = new SqlConnection(s);
            string k = "select * from roomallot where Student_id='"+TextBox3.Text+"'";
            SqlCommand g = new SqlCommand(k, a);
            a.Open();
            SqlDataReader n = g.ExecuteReader();
            while (n.Read())
            {
                l = l + 1;
            }
            if (l == 1)
            {
                Response.Write("<script>alert('Room is already alloted to this student');</script>");
            }
            else
            {
                a.Close();
                k = "select * from addstudent";
                g = new SqlCommand(k, a);
                a.Open();
                n = g.ExecuteReader();
                while (n.Read())
                {

                    if (TextBox3.Text == Convert.ToString(n.GetInt32(0)))
                    {

                        TextBox4.Text = n.GetString(1);
                        TextBox6.Text = n.GetString(3);
                        h = 1;

                    }
                }
                if (h == 1)
                {
                }
                else
                {

                    Response.Write("<script>alert('No Student Found');</script>");

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int h = 0, i = 0; ;
            string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Hostel management\Hostel management\App_Data\mydatabase.mdf;Integrated Security=True";
            SqlConnection a = new SqlConnection(s);
            string k = "Insert into roomallot(Student_id, Student_name,Course,Room_no,Room_category,Issue_date,fees)values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox1.Text + "','" + TextBox2.Text+ "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
            SqlCommand g = new SqlCommand(k, a);
            a.Open();
            int l = g.ExecuteNonQuery();
            a.Close();
            if(l==1)
            {
                k= "Insert into hostelrecord(Student_id, Student_name,Course,Room_no,Room_category,Issue_date,fees)values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
                g = new SqlCommand(k, a);
                a.Open();
                int v = g.ExecuteNonQuery();
                if(v==1)
                {
                    
                    Response.Write("<script>alert('Room allot Successfully');</script>");
                    a.Close();
                    }
                }
                a.Close();
                k="select * from roomallot where Student_id='"+TextBox3.Text+"'";
                g = new SqlCommand(k, a);
                a.Open();
                SqlDataReader p = g.ExecuteReader();
                while(p.Read())
                {
                    TextBox5.Text = Convert.ToString(p.GetInt32(0));
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                }
                
            }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int h = 0, i = 0;
            string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Hostel management\Hostel management\App_Data\mydatabase.mdf;Integrated Security=True";
            SqlConnection a = new SqlConnection(s);
            string k = "select * from addroom";
            SqlCommand g = new SqlCommand(k, a);
            a.Open();
            SqlDataReader n = g.ExecuteReader();
            if (n.HasRows)
            {
                i = 1;
                GridView1.DataSource = n;
                GridView1.DataBind();
                GridView1.Visible = true;
            }
        }
    }
    
}
