using System;


namespace Hostel_management.proj.img
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             if(TextBox2.Text=="a1b2c3d4")
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong password');</script>");
            }
        }
    }
}