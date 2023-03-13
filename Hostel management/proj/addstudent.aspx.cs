using System;
using System.Data.SqlClient;
namespace Hostel_management.proj
{
    public partial class addstudent : System.Web.UI.Page
    {
        int l;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int o = 0;

            if (TextBox2.Text == "")
            {
                o = 1;
            }
            if (TextBox3.Text == "")
            {
                o = 1;
            }
            if (TextBox4.Text == "")
            {
                o = 1;
            }
            if (TextBox5.Text == "")
            {
                o = 1;
            }
            if (o == 0)
            {
                string x = null;
                string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Hostel management\Hostel management\App_Data\mydatabase.mdf;Integrated Security=True";
                SqlConnection a = new SqlConnection(s);
                string k = "select * from addstudent";
                SqlCommand g = new SqlCommand(k, a);
                a.Open();
                SqlDataReader n = g.ExecuteReader();
                l = 2;
                while (n.Read())
                {

                    if ((TextBox2.Text.ToUpperInvariant()).Replace(" ", "") == (n.GetString(1).ToUpperInvariant()).Replace(" ", "") && (TextBox3.Text.ToUpperInvariant()).Replace(" ", "") == (n.GetString(2).ToUpperInvariant()).Replace(" ", "") && (TextBox4.Text.ToUpperInvariant()).Replace(" ", "") == (n.GetString(3).ToUpperInvariant()).Replace(" ", "") && (TextBox5.Text.ToUpperInvariant()).Replace(" ", "") == (n.GetString(4).ToUpperInvariant()).Replace(" ", ""))
                    {
                       l = 0;

                    }
                    else
                    {


                        l = 1;

                    }

                }

                if (l == 1 || l == 2)
                {
                    a.Close();

                    string j = "Insert into addstudent (student_name,Father_Name,class,address,Mobile_no)values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text+ "')";
                    a.Open();
                    g = new SqlCommand(j, a);
                    int z = g.ExecuteNonQuery();
                    if (z == 1)
                    {

                        Response.Write("<script>alert('Student Add successfully');</script>");
                        

                    }
                    k = "select * from addstudent";
                    g = new SqlCommand(k, a);
                    n = g.ExecuteReader();
                    while (n.Read())
                    {
                        string f = Convert.ToString(n.GetInt32(0));

                        if (TextBox2.Text == n.GetString(1) && TextBox3.Text == n.GetString(2) && TextBox4.Text == n.GetString(3) && TextBox5.Text == n.GetString(4))
                        {

                            Int32 l = n.GetInt32(0);
                            TextBox1.Text = Convert.ToString(l);
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";

                        }
                    }
                  
                }
                if (l == 0)
                {
                    Response.Write("<script>alert('Student is already Register');</script>");
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                }
               
            }
            else
            {
                Response.Write("<script>alert('please fill all the fields');</script>");
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }

}