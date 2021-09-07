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
    public partial class ContactUs : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            int a;

            string scon = " Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True";
            SqlConnection con = new SqlConnection(scon);
            con.Open();

            string query = " Select Max(conid) from contactus";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string val = dr[0].ToString();
                if (val == "")
                {
                    TextBox8.Text = "1";
                }
                else
                {
                    a = Convert.ToInt32(dr[0].ToString());
                    a = a + 1;
                    TextBox8.Text = a.ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into contactus" + "(Fname,Lname,Email,reson,Phone,Req)values(@F_name,@L_name,@E_mail,@res,@P_hone,@R_eq)", con);

            cmd.Parameters.AddWithValue("@F_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@L_name", TextBox3.Text);
            cmd.Parameters.AddWithValue("@E_mail", TextBox4.Text);
            cmd.Parameters.AddWithValue("@res", TextBox7.Text);
            cmd.Parameters.AddWithValue("@P_hone", TextBox5.Text);
            cmd.Parameters.AddWithValue("@R_eq", TextBox6.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Your request successfully under process, we wii connect you soon.....')</script>");

            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox7.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox8.Text = " ";
        }
    }
}