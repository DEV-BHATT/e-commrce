using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DreamDrive
{
    public partial class UserAddCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buyitems"];
            if (dt != null)
            {
                Label1.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label1.Text = "0";

            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DropDownList dllist = (DropDownList)(e.Item.FindControl("DropDropList1"));
            Response.Redirect("UserAddCard.aspx?Id=" + e.CommandArgument.ToString() + "&productqty=" + dllist.SelectedItem.ToString());
        }

        

        

       

       


       
    }
}
