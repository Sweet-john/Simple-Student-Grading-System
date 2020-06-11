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
    public partial class T_CAss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //create assignment
        protected void Button1_Click(object sender, EventArgs e) {
            //check if the sum of weight is 1
            if (Convert.ToDouble(TextBox2.Text.ToString())
                + Convert.ToDouble(TextBox4.Text.ToString()) 
                + Convert.ToDouble(TextBox6.Text.ToString()) 
                + Convert.ToDouble(TextBox8.Text.ToString())
                + Convert.ToDouble(TextBox10.Text.ToString())== 1)
            {
                //set connection to database
                SqlConnection con = new SqlConnection("Server=(local); Data source=DESKTOP-OIEVTQT; Initial Catalog=grading; Integrated Security=True");
                //insert aid, questions and weights in to assignment table
                SqlCommand create = new SqlCommand("insert assignment(aid,question1,weight1,question2,weight2,question3,weight3,question4,weight4,question5,weight5) values('" + number.Text.ToString()+"','"+ TextBox1.Text.ToString() + "','" + Convert.ToDouble(TextBox2.Text.ToString()) + "','" +
                TextBox3.Text.ToString() + "','" + Convert.ToDouble(TextBox4.Text.ToString()) + "','" +
                TextBox5.Text.ToString() + "','" + Convert.ToDouble(TextBox6.Text.ToString()) + "','" +
                TextBox7.Text.ToString() + "','" + Convert.ToDouble(TextBox8.Text.ToString()) + "','" +
                TextBox9.Text.ToString() + "','" + Convert.ToDouble(TextBox10.Text.ToString()) + "')");
                sqlexecute(create, con);
                Response.Write("<script>javascript:alert(\"Success!\");</script>"); 
            }
            else Response.Write("<script>javascript:alert(\"The sum of weights is not 1!\");</script>");
        }

        //delete assignment
        protected void Button2_Click(object sender, EventArgs e) {
            SqlConnection con = new SqlConnection("Server=(local); Data source=DESKTOP-OIEVTQT; Initial Catalog=grading; Integrated Security=True");
            //delete assignment according to aid
            SqlCommand delete = new SqlCommand("delete from assignment where(aid = '" + number.Text.ToString() + "')");
            sqlexecute(delete, con);
        }

        //reset all the textbox to blank
        protected void Button3_Click(object sender, EventArgs e) {
            number.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }

        protected void sqlexecute(SqlCommand a, SqlConnection b) {
            a.Connection = b;
            try
            {
                b.Open();
                a.ExecuteNonQuery();
                b.Close();
                Response.Write("<script>javascript:alert(\"Success!\");</script>");
            }
            catch (Exception en)
            {
                string error = en.Message;
                Server.ClearError();
                Response.Write("<script>javascript:alert(\"Error: " + en + "\");</script>");
                b.Close();
            }
        }

        //back
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("T.aspx", false);
        }
        }
}