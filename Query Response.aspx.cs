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
    public partial class Query_Response : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(" Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
          //  string str = "Select FNAME,LNAME,EMAIL,QUERY,QUEREQ from Query where (PNUM like '%' + @search +'%')";
            //SqlCommand cmd = new SqlCommand(str, con);
            //cmd.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextBox1.Text;

            //con.Open();
            //cmd.ExecuteNonQuery();
            //SqlDataAdapter da = new SqlDataAdapter();
            //da.SelectCommand = cmd;
            //DataSet ds = new DataSet();
            //da.Fill(ds, "PNUM");
            //GridView2.DataSource = ds;
            //GridView2.DataBind();
            //con.Close();
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "Select Qid,Fname,Lname,Email,Query,Req from Query where (Qid like '%' + @search +'%')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextBox1.Text;

            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "Qid");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             string str = "Select Fname,Lname,Email,Query,Req from Query where (Phone like '%' + @search +'%')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextBox2.Text;

            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "Phone");
            GridView2.DataSource = ds;
            GridView2.DataBind();
            con.Close();
        }
    }
}