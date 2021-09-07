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
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string scon = "Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True";
            SqlConnection con = new SqlConnection(scon);
            con.Open();
            SqlCommand com = new SqlCommand("select *from Admn where Aname='" + TextBox1.Text + "' and Apassword='" + TextBox2.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Response.Redirect("AdminDashboradHome.aspx");
            }
            else
            {
                Response.Write("<script>alert('please Enter Vaild User Name and Password')</Script>");
            }
        }
    }
}