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
using System.IO;


public partial class admin_registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(System.Web.HttpContext.Current.Session["username"]) == "")
        {
            HttpContext.Current.Response.Redirect("login.aspx");
        }
        if (IsPostBack != true)
        {
            fillgrid();
        }
    }
    protected void fillgrid()
    {
        con.Open();
        String str = "select * from registration";
        String query = "insert into registration(photo) values(@photo)";
        SqlDataAdapter sda = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@cat_name", txtcat.Text);
       // if (CheckFileType(FileUpload1.FileName))
          //  cmd.Parameters.AddWithValue("@p_img", FilePath(FileUpload1.FileName));
        //else
          //  cmd.Parameters.AddWithValue("@p_img", "Image Not Available");
        
        con.Close();
    }
    protected void imgdeltmp_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton ib = (ImageButton)sender;
        GridViewRow gv = (GridViewRow)ib.NamingContainer;
        int id = (Convert.ToInt16(GridView1.DataKeys[gv.RowIndex].Value));
        con.Open();
        string q = "delete from registration where r_id=" + id;
        SqlCommand cmd = new SqlCommand(q, con);
        cmd.ExecuteNonQuery();

        con.Close();
        fillgrid();

    }
        protected void HiddenField1_ValueChanged(object sender, EventArgs e)
    {

    }

}
