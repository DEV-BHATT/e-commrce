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
    public partial class Usertologin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            SqlDataReader reader;
            con.ConnectionString = ("Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True");
            cmd.Connection = con;
            cmd.CommandText = string.Format("select *from REG where uid='{0}' and Pass='{1}'", TextBox3.Text, TextBox2.Text);
            con.Open();
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                HttpCookie cook = new HttpCookie("edit");
                cook.Values.Add("user", TextBox3.Text);
                Response.Cookies.Add(cook);
                con.Close();
                Response.Redirect("Updateprofile.aspx");
            }
            else
            {


                Label3.Text = "User id or Password not Vaild";
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        
    }
}