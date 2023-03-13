using System;
using System.Data.SqlClient;

namespace Hostel_management.proj
{
    public partial class addroom : System.Web.UI.Page
    {
        int l;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
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
         
            if (o == 0)
            {
                string x = null;
                string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Hostel management\Hostel management\App_Data\mydatabase.mdf;Integrated Security=True";
                SqlConnection a = new SqlConnection(s);
                string k = "select * from addroom";
                SqlCommand g = new SqlCommand(k, a);
                a.Open();
                SqlDataReader n = g.ExecuteReader();
                l = 2;
                while (n.Read())
                {

                    if ((TextBox2.Text.ToUpperInvariant()).Replace(" ", "") == (n.GetString(0).ToUpperInvariant()).Replace(" ", "") && (TextBox3.Text.ToUpperInvariant()).Replace(" ", "") == (n.GetString(1).ToUpperInvariant()).Replace(" ", ""))
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

                    string j = "Insert into addroom (category,room_no)values('" + TextBox2.Text + "','" + TextBox3.Text + "')";
                    a.Open();
                    g = new SqlCommand(j, a);
                    int z = g.ExecuteNonQuery();
                    if (z == 1)
                    {

                        Response.Write("<script>alert('Room Add successfully');</script>");
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                    }
                   
                }
                if (l == 0)
                {
                    Response.Write("<script>alert('Room is already Register');</script>");
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }

            }
            else
            {
                Response.Write("<script>alert('please fill all the fields');</script>");
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
    
}