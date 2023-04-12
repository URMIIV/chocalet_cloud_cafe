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


public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        try
        {
            String query = "select user_id,username,password from admin where username='" + txtuname.Text + "' and password='" + txtpass.Text + "'";
            SqlCommand com = new SqlCommand(query, con);
            com.CommandType = CommandType.Text;
            SqlDataReader rdr = com.ExecuteReader();
            if (rdr.Read())
            {
                Session["user_id"] = Convert.ToInt16(rdr["user_id"]);
                Session["username"] = Convert.ToString(rdr["username"]);
                Response.Redirect("category.aspx");
            }
            else
            {
                lblmsg.Visible = true;
                lblmsg.Text = "Username or password is wrong";
            }
        }
        catch { }
    }
}
