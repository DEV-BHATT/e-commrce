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
    public partial class OrderPlace : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                refreshdata();
            }
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("productId");
                dt.Columns.Add("productName");
                dt.Columns.Add("quantity");
                dt.Columns.Add("price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("productImage");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        string con = "Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(con);
                        string query = "select *from product where productId=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = query;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["productId"] = ds.Tables[0].Rows[0]["productId"].ToString();
                        dr["productName"] = ds.Tables[0].Rows[0]["productName"].ToString();
                        dr["productImage"] = ds.Tables[0].Rows[0]["productImage"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;


                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["Buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total= Rs.";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("UserDashBoard.aspx");


                    }
                    else
                    {
                        dt = (DataTable)Session["Buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        string con = "Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(con);
                        string query = "select *from product where producteId=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = query;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["productId"] = ds.Tables[0].Rows[0]["productId"].ToString();
                        dr["productName"] = ds.Tables[0].Rows[0]["productName"].ToString();
                        dr["productImage"] = ds.Tables[0].Rows[0]["productImage"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["Buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total= Rs.";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("UserDashBoard.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["Buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total= Rs.";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }
                Label1.Text = GridView1.Rows.Count.ToString();
                Label2.Text = DateTime.Now.ToShortDateString();
                findorderid();

            }
        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;
            }
            return gtotal;
        }

        public void findorderid()
        {
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];
            }
            String orderid;
            orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString();
            Label1.Text = orderid;

        }

        public void refreshdata()
        {
            SqlCommand cmd = new SqlCommand("select *from product ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        }
        public void saveaddress()
        {
            String updatepass = "insert into OrderAdd(orderid,addr,mobilenumber)values('" + Label1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            String mycon1 = "Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True";
            SqlConnection scon = new SqlConnection(mycon1);
            scon.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatepass;
            cmd.Connection = scon;
            cmd.ExecuteNonQuery();
            scon.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["Buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                String updatepass = "insert into OrderDetails(orderid,sno,ProductId,ProductName,price,productqty,dateoforder)values('" + Label1.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["ProductId"] + ",'" + dt.Rows[i]["ProductName"] + "'," + dt.Rows[i]["Price"] + "," + dt.Rows[i]["quantity"] + ",'" + Label2.Text + "')";
                String mycon1 = "Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True";
                SqlConnection scon = new SqlConnection(mycon1);
                scon.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = updatepass;
                cmd.Connection = scon;
                cmd.ExecuteNonQuery();
                scon.Close();

            }
            saveaddress();
            Response.Redirect("OrderFinalPlace.aspx");
        }
        }
    }
