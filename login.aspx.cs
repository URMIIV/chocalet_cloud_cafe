using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["CaptchaCode"] != null && txtCaptcha.Text == Session["CaptchaCode"].ToString())
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
            //change at sqlexpress(use double \) and datadirectory
            con.Open();
            String query = "select r_id,username,password from registration where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            SqlCommand com = new SqlCommand(query, con);
            com.CommandType = CommandType.Text;
            SqlDataReader rdr = com.ExecuteReader();
            if (rdr.Read())
            {
                Session["user_id"] = Convert.ToInt16(rdr["r_id"]);
                Session["username"] = Convert.ToString(rdr["username"]);
                Response.Redirect("category.aspx");
                // Response.Redirect("home.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label2.Text = "Username or password is wrong";
            }
        }
        else
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Captcha code is wrong!!";
        }




    }
    
    protected void btnCaptcha_Click(object sender, EventArgs e)
    {
        {

            //imgCaptcha.ImageUrl = "~/CreateCaptcha.aspx?New=0";

        }
    }
}

