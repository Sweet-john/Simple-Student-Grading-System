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
    public partial class T_CAcc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        //create account
        protected void Button1_Click(object sender, EventArgs e)
        {
            insert(TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString());
        }

        protected void insert(string username,string password,string email)
        {
            //set connection to database
            SqlConnection con = new SqlConnection("Server=(local); Data source=DESKTOP-OIEVTQT; Initial Catalog=grading; Integrated Security=True");
            //insert username, password and email to studentaccount table
            SqlCommand input = new SqlCommand("INSERT into studentaccount (username,password,email) VALUES(\'"+username+"\',\'"+password+ " \',\'" + email + " \');");

            input.Connection = con;
           

            try
            {
                con.Open();
                input.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>javascript:alert('Success!');</script>");
            }
            catch (Exception e){
                string error = e.Message;
                Server.ClearError();
                Response.Write("<script>javascript:alert(\"Error: " + error + "\");</script>");
            }

        }

        //back
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("T.aspx", false);
        }
    }
}