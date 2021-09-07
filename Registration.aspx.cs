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

    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            int a;
            string scon = " Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True";
            SqlConnection con = new SqlConnection(scon);
            con.Open();

            string query = " Select Max(uid) from REG";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string val = dr[0].ToString();
                if (val == "")
                {
                    TextBox1.Text = "1";
                }
                else
                {
                    a = Convert.ToInt32(dr[0].ToString());
                    a = a + 1;
                    TextBox1.Text = a.ToString();
                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = !Calendar1.Visible;
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            TextBox7.Text = Calendar1.SelectedDate.ToLongDateString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string scon = "Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True";
            SqlConnection con = new SqlConnection(scon);
            string scom = "Insert into REG values(@Fname,@Lname,@Email,@Dob,@Addrss,@pin,@Pass)";
            SqlCommand com = new SqlCommand(scom, con);

            SqlParameter TFNAME = new SqlParameter();
            TFNAME.DbType = System.Data.DbType.String;
            TFNAME.ParameterName = "@Fname";
            TFNAME.Value = TextBox2.Text;
            com.Parameters.Add(TFNAME);

            SqlParameter TLNAME = new SqlParameter();
            TLNAME.DbType = System.Data.DbType.String;
            TLNAME.ParameterName = "@Lname";
            TLNAME.Value = TextBox6.Text;
            com.Parameters.Add(TLNAME);

            SqlParameter TEMAIL = new SqlParameter();
            TEMAIL.DbType = System.Data.DbType.String;
            TEMAIL.ParameterName = "@Email";
            TEMAIL.Value = TextBox3.Text;
            com.Parameters.Add(TEMAIL);

            SqlParameter TDATE = new SqlParameter();
            TDATE.DbType = System.Data.DbType.String;
            TDATE.ParameterName = "@Dob";
            TDATE.Value = TextBox7.Text;
            com.Parameters.Add(TDATE);
            SqlParameter TADD= new SqlParameter();
            TADD.DbType = System.Data.DbType.String;
            TADD.ParameterName = "@Addrss";
            TADD.Value = TextBox4.Text;
            com.Parameters.Add(TADD);
            SqlParameter TPIN = new SqlParameter();
            TPIN.DbType = System.Data.DbType.String;
            TPIN.ParameterName = "@Pin";
            TPIN.Value = TextBox5.Text;
            com.Parameters.Add(TPIN);

            SqlParameter TCPASS = new SqlParameter();
            TCPASS.DbType = System.Data.DbType.String;
            TCPASS.ParameterName = "@Pass";
            TCPASS.Value = TextBox8.Text;
            com.Parameters.Add(TCPASS);


            con.Open();
            com.ExecuteNonQuery();
            con.Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox6.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox7.Text = "";
            TextBox5.Text = "";
            TextBox8.Text = "";
            Response.Redirect("Registration.aspx");

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox7.Text = Calendar1.SelectedDate.ToLongDateString();
            
        }

    }
}










       
    
