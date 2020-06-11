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
    public partial class S_Ass : System.Web.UI.Page
    {   public string aid; 
        public SqlConnection con = new SqlConnection("Server=(local); Data source=DESKTOP-OIEVTQT; Initial Catalog=grading; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //select first row from assignment table
            SqlCommand check = new SqlCommand("select * from assignment");
            check.Connection = con;
            //connect to database
            con.Open();
            SqlDataReader data = check.ExecuteReader();
            data.Read();
            //set aid from database
            aid = data["aid"].ToString();
            //display questions from database
            id.Text = "Assignment"+data["aid"].ToString();
            Label1.Text = "Question1:" + data["question1"].ToString();
            Label2.Text = "Question2:" + data["question2"].ToString();
            Label3.Text = "Question3:" + data["question3"].ToString();
            Label4.Text = "Question4:" + data["question4"].ToString();
            Label5.Text = "Question5:" + data["question5"].ToString();
            con.Close();
        }

        //submit answer
        protected void Button1_Click(object sender, EventArgs e) {
            HttpCookie a = Request.Cookies["account"];
            //insert answers into answer table
            SqlCommand check = new SqlCommand("insert answer values('"+a.Values["username"]+"','"+aid+"','"+TextBox1.Text.ToString()+"','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "')");
            check.Connection = con;
            con.Open();
            check.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>javascript:alert(\"Success!\");</script>");
            
        }

        //enter other assignment
        //frame is similar to page_load
        protected void Button2_Click(object sender, EventArgs e)
        {
            //select assignment according to aid
            SqlCommand check = new SqlCommand("select * from assignment where aid = "+ TextBox6.Text.ToString());
            check.Connection = con;
            con.Open();
            SqlDataReader data = check.ExecuteReader();
            data.Read();
            aid = data["aid"].ToString();
            id.Text = "Assignment" + data["aid"].ToString();
            Label1.Text = "Question1:" + data["question1"].ToString();
            Label2.Text = "Question2:" + data["question2"].ToString();
            Label3.Text = "Question3:" + data["question3"].ToString();
            Label4.Text = "Question4:" + data["question4"].ToString();
            Label5.Text = "Question5:" + data["question5"].ToString();
            con.Close();
        }

        //back
        protected void Button3_Click(object sender, EventArgs e) {
            Response.Redirect("S.aspx");
        }

    }
}