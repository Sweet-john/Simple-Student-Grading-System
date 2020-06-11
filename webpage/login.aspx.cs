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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //teacher log in
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Set connection
            SqlConnection con = new SqlConnection("Server=(local); Data source=DESKTOP-OIEVTQT; Initial Catalog=grading; Integrated Security=True");
            //select password according to the username
            SqlCommand check = new SqlCommand("select password from teacheraccount where username = '"+TextBox1.Text.ToString()+"'");
            //connect to database
            check.Connection = con;

            try
            {
                con.Open();
                SqlDataReader data = check.ExecuteReader();
                data.Read();
                //check if password is correct
                if (data["password"].ToString() == TextBox2.Text.ToString())
                {   con.Close();
                    //set the cookie
                    HttpCookie objCookie = new HttpCookie("account");
                    objCookie.Values["username"] = TextBox1.Text.ToString();
                    Response.Cookies.Add(objCookie);
                    //jump to other page
                    Response.Redirect("T.aspx", false);  
                }
                else
                    Response.Write("<script>javascript:alert(\"Wrong Password\");</script>");
                con.Close();
            }
            catch(Exception en) {
                string error = en.Message;
                Server.ClearError();
                Response.Write("<script>javascript:alert(\"Error: " + en + "\");</script>");
                con.Close();
            }
        }

        //student log in 
        //frame is similar to above
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=(local); Data source=DESKTOP-OIEVTQT; Initial Catalog=grading; Integrated Security=True");
            SqlCommand check = new SqlCommand("select password from studentaccount where username = '" + TextBox1.Text.ToString() + "'");

            check.Connection = con;

            try
            {
                con.Open();
                SqlDataReader data = check.ExecuteReader();
                data.Read();
                if (data["password"].ToString() == TextBox2.Text.ToString())
                { con.Close();
                    HttpCookie objCookie = new HttpCookie("account");
                    objCookie.Values["username"] = TextBox1.Text.ToString();
                    Response.Cookies.Add(objCookie);
                    Response.Redirect("S.aspx", false); }
                else
                    Response.Write("<script>javascript:alert(\"Wrong Password\");</script>");
                con.Close();
            }
            catch (Exception en)
            {
                string error = en.Message;
                Server.ClearError();
                Response.Write("<script>javascript:alert(\"Error: " + en + "\");</script>");
                con.Close();
            }

        }
    }
}