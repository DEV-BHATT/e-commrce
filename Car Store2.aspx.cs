using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace DreamDrive
{
    public partial class Car_Store2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Request.QueryString["val"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string scon = "Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True";
            SqlConnection con = new SqlConnection(scon);
            string scom = "Insert into product2 values(@productId,@productName,@productcat,@productqty,@price,@productImg)";
            SqlCommand com = new SqlCommand(scom, con);


            SqlParameter TPid = new SqlParameter();
            TPid.DbType = System.Data.DbType.String;
            TPid.ParameterName = "@productId";
            TPid.Value = TextBox1.Text;
            com.Parameters.Add(TPid);

            SqlParameter TPname = new SqlParameter();
            TPname.DbType = System.Data.DbType.String;
            TPname.ParameterName = "@productName";
            TPname.Value = TextBox2.Text;
            com.Parameters.Add(TPname);

            SqlParameter TPcat = new SqlParameter();
            TPcat.DbType = System.Data.DbType.String;
            TPcat.ParameterName = "@productcat";
            TPcat.Value = TextBox3.Text;
            com.Parameters.Add(TPcat);

            SqlParameter TPqty = new SqlParameter();
            TPqty.DbType = System.Data.DbType.String;
            TPqty.ParameterName = "@productqty";
            TPqty.Value = TextBox4.Text;
            com.Parameters.Add(TPqty);

            SqlParameter TPPrice = new SqlParameter();
            TPPrice.DbType = System.Data.DbType.String;
            TPPrice.ParameterName = "@price";
            TPPrice.Value = TextBox5.Text;
            com.Parameters.Add(TPPrice);



            string filename = Path.GetFileName(FileUpload1.FileName);

            FileUpload1.SaveAs(Server.MapPath("~/" + filename));

            com.Parameters.AddWithValue("@productImg", "image/" + filename);



            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Response.Write("<script>alert('Add Product Successfully...')</script>");
            Response.Redirect("SuvView.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SuvView.apsx");
        }
    }
}