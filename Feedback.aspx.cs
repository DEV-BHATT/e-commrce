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
    public partial class Feedback : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(" Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string strUser = "";
                if (Request.Cookies["edit"] != null)
                    strUser = Request.Cookies["edit"]["user"].ToString();
                SqlConnection con = new SqlConnection(" Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True");

                SqlCommand cmd = new SqlCommand(string.Format("select *from REG where uid='{0}'", strUser), con);
                SqlDataReader reader;
                con.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    TextBox1.Text = reader[0].ToString();
                    TextBox2.Text = reader[1].ToString();
                    TextBox6.Text = reader[2].ToString();
                    TextBox3.Text = reader[3].ToString();
                    //TextBox4.Text = reader[4].ToString();
                    TextBox8.Text = reader[5].ToString();
                    TextBox1.Text = strUser;
                }
                else
                {
                    Response.Redirect("FeedbackTologin.aspx");
                    con.Close();
                }
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd=new SqlCommand("Insert into Feed"+ "(uid,Fname,Lname,Email,Feed,phone)values(@u_id,@F_name,@L_name,@E_mail,@F_eed,@p_hone)",con);
            cmd.Parameters.AddWithValue("u_id",TextBox1.Text);
            cmd.Parameters.AddWithValue("F_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("L_name", TextBox6.Text);
            cmd.Parameters.AddWithValue("E_mail", TextBox3.Text);
            cmd.Parameters.AddWithValue("F_eed", TextBox4.Text);
            cmd.Parameters.AddWithValue("P_hone", TextBox8.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<Script>alert('Your Feedback has been Successfully update')</Script>");

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox6.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox8.Text = "";

        }
    }
}