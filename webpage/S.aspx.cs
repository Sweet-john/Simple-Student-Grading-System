using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class S : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //submit assignment
        protected void Button1_Click(object sender, EventArgs e) {
            Response.Redirect("S_Ass.aspx");
        }

        //assignment summary
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("S_AssS.aspx");
        }

        //log out
        protected void Button3_Click(object sender, EventArgs e)
        {
            HttpCookie a = Request.Cookies["account"];
            a.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(a);
            Response.Redirect("login.aspx");
        }

    }
}