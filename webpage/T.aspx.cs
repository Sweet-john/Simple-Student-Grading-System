using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class T : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //skip to create account
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("T_CAcc.aspx", false);
        }

        //skip to create assignment
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("T_CAss.aspx", false);
        }

        //skip to assignment marking
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("T_AM.aspx", false);
        }

        //log out
        protected void Button4_Click(object sender, EventArgs e)
        {
            HttpCookie a = Request.Cookies["account"];
            a.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(a);
            Response.Redirect("login.aspx", false);
        }
    }
}