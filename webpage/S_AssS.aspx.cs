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
    public partial class S_AssS : System.Web.UI.Page
    {
        public SqlConnection con = new SqlConnection("Server=(local); Data source=DESKTOP-OIEVTQT; Initial Catalog=grading; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie a = Request.Cookies["account"];
            //select first assignment summary according to the username of student
            SqlCommand check = new SqlCommand("select * from answergrade where username = '" + a.Values["username"] + "'");
            process(check);
        }

        //back
        protected void Button1_Click(object sender, EventArgs e) {
            Response.Redirect("S.aspx");
        }

        //display the points and comment of assignment
        protected void process(SqlCommand s)
        {
            s.Connection = con;
            con.Open();
            SqlDataReader data = s.ExecuteReader();
            data.Read();
            if (data != null)
            {
                //select weights of assignemnt according to aid
                SqlCommand weight = new SqlCommand("select * from assignment where aid = '" + data["aid"] + "'");
                weight.Connection = con;
                object i = data["aid"];
                object c = data["comment"];
                object a1 = data["answer1"];
                object a2 = data["answer2"];
                object a3 = data["answer3"];
                object a4 = data["answer4"];
                object a5 = data["answer5"];
                data.Close();

                SqlDataReader weightdata = weight.ExecuteReader();
                weightdata.Read();
                if (weightdata != null)
                {
                    //calculate total points
                    double total = Convert.ToDouble(weightdata["weight1"]) * Convert.ToDouble(a1)
                        + Convert.ToDouble(weightdata["weight2"]) * Convert.ToDouble(a2)
                        + Convert.ToDouble(weightdata["weight3"]) * Convert.ToDouble(a3)
                        + Convert.ToDouble(weightdata["weight4"]) * Convert.ToDouble(a4)
                        + Convert.ToDouble(weightdata["weight5"]) * Convert.ToDouble(a5);

                    //display points and comment
                    id.Text = "Assignment" + i.ToString();
                    Label1.Text = "Answer1:" + a1.ToString();
                    Label2.Text = "Answer2:" + a2.ToString();
                    Label3.Text = "Answer3:" + a3.ToString();
                    Label4.Text = "Answer4:" + a4.ToString();
                    Label5.Text = "Answer5:" + a5.ToString();
                    Label6.Text = "Total Points(after calculating weight):" + total;
                    Label8.Text = c.ToString();

                    con.Close();
                }
                else Response.Write("<script>javascript:alert(\"Error: Assignment Not Exist!\");</script>");
            }
            else Response.Write("<script>javascript:alert(\"Error: Assignment Marking Not Exist!\");</script>");
        }


        //enter other assignment summary
        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpCookie a = Request.Cookies["account"];
            //display assignment summary according to username of student and aid
            SqlCommand check = new SqlCommand("select * from answergrade where username = '" + a.Values["username"] + "' and aid ="+TextBox1.Text.ToString());
            process(check);
        }
    }
}