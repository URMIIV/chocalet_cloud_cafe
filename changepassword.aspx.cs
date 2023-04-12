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



public partial class changepassword : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(System.Web.HttpContext.Current.Session["username"]) == "")
        {
            HttpContext.Current.Response.Redirect("login.aspx");
        }
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "select r_id,password from registration where r_id='" + Session["userid"] + "' and password= '" + txtold.Text + "'";
        SqlCommand com = new SqlCommand(query, con);
        com.CommandType = CommandType.Text;
        SqlDataReader rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            rdr.Close();
            string query1;
            query1 = "update registration set password=@new WHERE r_id=@r_id and password=@old";
            SqlCommand cmd = new SqlCommand(query1, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@old", txtold.Text);
            cmd.Parameters.AddWithValue("@new", txtnew.Text);
            cmd.Parameters.AddWithValue("@rid", Session["userid"]);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("logout.aspx");
        }
        else
        {
            Label5.Visible = true;
            Label5.Text = "Please Enter Valid Old Password";
        }

    }
}
