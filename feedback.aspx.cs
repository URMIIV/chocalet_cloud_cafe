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

public partial class feedback : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(System.Web.HttpContext.Current.Session["username"]) == "")
        {
            HttpContext.Current.Response.Redirect("Login.aspx");
        }
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into feedback (r_id,name,title,description,email,contactno) values(@r_id,@name,@title,@description,@email,@contactno)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@r_id", Session["user_id"]);
        cmd.Parameters.AddWithValue("@name", name.Text);
        cmd.Parameters.AddWithValue("@title", title.Text);
        cmd.Parameters.AddWithValue("@description", des.Text);
        cmd.Parameters.AddWithValue("@email", email.Text);
        cmd.Parameters.AddWithValue("@contactno", cno.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("home.aspx");
    }
}
