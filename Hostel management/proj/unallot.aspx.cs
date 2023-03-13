using System;
using System.Data.SqlClient;

namespace Hostel_management.proj
{
    public partial class unallot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int h = 0, i = 0;
            string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Hostel management\Hostel management\App_Data\mydatabase.mdf;Integrated Security=True";
            SqlConnection a = new SqlConnection(s);
            string k = "select * from roomallot where Registration_id=" + TextBox1.Text + " ";
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
            if (i == 1)
            {
               
                a.Close();
            }
            else
            {
                Response.Write("<script>alert('No history of room Allotment is find');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Hostel management\Hostel management\App_Data\mydatabase.mdf;Integrated Security=True";
            SqlConnection a = new SqlConnection(s);
            string k = "delete from roomallot where  Registration_id='" + TextBox1.Text + "'";
            SqlCommand g = new SqlCommand(k, a);
            a.Open();
            int m = g.ExecuteNonQuery();
            if (m == 1)
            {
                Response.Write("<Script>alert('Room Unallot Successfully');</Script>");
                TextBox1.Text = "";
                GridView1.Visible = false;   
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}