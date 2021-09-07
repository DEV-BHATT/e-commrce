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
    public partial class CarCart : System.Web.UI.Page
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
                        Response.Redirect("CarCart.aspx");


                    }
                    else
                    {
                        dt = (DataTable)Session["Buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
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
                        Response.Redirect("CarCart.aspx");
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

        public void refreshdata()
        {
            SqlCommand cmd = new SqlCommand("select *from product", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }

            for (int i = 1; i < dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();

            }
            Session["Buyitems"] = dt;
            Response.Redirect("CarCart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["Buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                String updatepass = "insert into CardDetails(sno,productId,productName,price,productqty)values(" + dt.Rows[i]["sno"] + "," + dt.Rows[i]["ProductId"] + ",'" + dt.Rows[i]["ProductName"] + "'," + dt.Rows[i]["Price"] + "," + dt.Rows[i]["quantity"] + ")";
                String mycon1 = "Data Source=DESKTOP-69CFBJ2;Initial Catalog=dream;Integrated Security=True";
                SqlConnection scon = new SqlConnection(mycon1);
                scon.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = updatepass;
                cmd.Connection = scon;
                cmd.ExecuteNonQuery();
                scon.Close();

            }

            Response.Redirect("OrderPlace.aspx");
        }

        }
    }
