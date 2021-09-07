using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DreamDrive
{
    public partial class FeedbackTologin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            SqlDataReader reader;
            con.ConnectionString = "Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True";
            cmd.Connection = con;
            cmd.CommandText = string.Format("select *from REG where uid='{0}' and Pass='{1}'", TextBox1.Text, TextBox2.Text);
            con.Open();
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                HttpCookie cookie = new HttpCookie("edit");
                cookie.Values.Add("user", TextBox1.Text);
                Response.Cookies.Add(cookie);
                con.Close();
                Response.Redirect("Feedback.aspx");
            }
            else
                Label2.Text = "User Id or Password not Valid";

        }

       

       
    }
}