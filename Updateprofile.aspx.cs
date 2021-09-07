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
    public partial class Updateprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
            if (!IsPostBack)
            {
                string strUser = "";
                if (Request.Cookies["edit"] != null)
                    strUser = Request.Cookies["edit"]["user"].ToString();
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True");
                SqlCommand cmd = new SqlCommand(string.Format("Select * from  REG where uid='{0}'", strUser), con);
                SqlDataReader reader;
                con.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    TextBox1.Text = reader[0].ToString();
                    TextBox2.Text = reader[1].ToString();
                    TextBox6.Text = reader[2].ToString();
                    TextBox3.Text = reader[3].ToString();
                    TextBox7.Text = reader[4].ToString();
                    TextBox4.Text = reader[5].ToString();
                    TextBox5.Text = reader[6].ToString();
                    TextBox8.Text = reader[7].ToString();
                }
                else
                    Response.Redirect("Usertologin.aspx");
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd=con.CreateCommand();
            cmd.CommandType =CommandType.Text;
            cmd.CommandText="Update REG set Fname='" +TextBox2.Text+"',Lname='"+TextBox6.Text+"',Email='"+TextBox3.Text+"',Dob='"+TextBox7.Text+"',Addrss='"+TextBox4.Text+"',pin='"+TextBox5.Text+"',Pass='"+TextBox8.Text+"' where uid='"+TextBox1.Text+"'";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Your Account Has been Successfully Update')</Script>");

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
          Calendar1.Visible=true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox7.Text=Calendar1.SelectedDate.ToLongDateString();
            Calendar1.Visible=false;
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            TextBox7.Text = Calendar1.SelectedDate.ToLongDateString();
        }

        }
    }
