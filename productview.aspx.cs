using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DreamDrive
{
    public partial class productview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Car store.aspx?val=" + Button1.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Car store.aspx?val=" + Button2.Text);
        }
    }
}