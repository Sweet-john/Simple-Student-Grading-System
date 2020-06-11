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
    public partial class T_AM : System.Web.UI.Page
    {
        public string aid;
        public SqlConnection con = new SqlConnection("Server=(local); Data source=DESKTOP-OIEVTQT; Initial Catalog=grading; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //select first row from answer table
            SqlCommand check = new SqlCommand("select * from answer");
            check.Connection = con;
            con.Open();
            SqlDataReader data = check.ExecuteReader();
            data.Read();
            if (data != null)
            {
                //set aid and display answers of an assignment
                aid = data["aid"].ToString();
                id.Text = "Assignment" + data["aid"].ToString();
                username.Text = data["username"].ToString();
                Label1.Text = "Answer1:"+data["answer1"].ToString();
                Label2.Text = "Answer2:"+data["answer2"].ToString();
                Label3.Text = "Answer3:"+data["answer3"].ToString();
                Label4.Text = "Answer4:"+data["answer4"].ToString();
                Label5.Text = "Answer5:"+data["answer5"].ToString();
                con.Close();
            }
            else Response.Write("<script>javascript:alert(\"Answer not exist!\");</script>");
        }


        //submit assignment marking
        protected void Button1_Click(object sender, EventArgs e)
        {
            //check if the mark is correct
            if (Convert.ToDouble(TextBox1.Text.ToString()) > 100
                || Convert.ToDouble(TextBox2.Text.ToString()) > 100
                || Convert.ToDouble(TextBox3.Text.ToString()) > 100
                || Convert.ToDouble(TextBox4.Text.ToString()) > 100
                || Convert.ToDouble(TextBox5.Text.ToString()) > 100)
            Response.Write("<script>javascript:alert(\"The Max of mark is 100!\");</script>");
            else
            {
                //insert marks into answergrade table
                SqlCommand check = new SqlCommand("insert answergrade values('" + username.Text.ToString() + "','" + aid + "','" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox.Text.ToString() + "')");
                check.Connection = con;
                con.Open();
                check.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>javascript:alert(\"Success!\");</script>");
            }
        }

        //enter other assignment according to username and aid
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand check = new SqlCommand("select * from answer where aid = " + TextBox6.Text.ToString() + "and username = '" + TextBox7.Text.ToString() + "'");
            check.Connection = con;
            con.Open();
            SqlDataReader data = check.ExecuteReader();
            data.Read();
            if (data != null) { 
            aid = data["aid"].ToString();
            id.Text = "Assignment" + data["aid"].ToString();
            username.Text = data["username"].ToString();
            Label1.Text = "Answer1:" + data["answer1"].ToString();
            Label2.Text = "Answer2:" + data["answer2"].ToString();
            Label3.Text = "Answer3:" + data["answer3"].ToString();
            Label4.Text = "Answer4:" + data["answer4"].ToString();
            Label5.Text = "Answer5:" + data["answer5"].ToString();
                con.Close();
            }
            else Response.Write("<script>javascript:alert(\"Answer not exist!\");</script>");
        }

        //back
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("T.aspx");
        }
    }
}