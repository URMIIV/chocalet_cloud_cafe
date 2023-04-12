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


public partial class admin_addcategory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(System.Web.HttpContext.Current.Session["username"]) == "")
        {
            HttpContext.Current.Response.Redirect("login.aspx");
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into category (cat_name,cat_image) values(@cat_name,@cat_image)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@cat_name", TextBox1.Text);
        if (CheckFileType(FileUpload1.FileName))
            cmd.Parameters.AddWithValue("@cat_image", FilePath(FileUpload1.FileName));
        else
            cmd.Parameters.AddWithValue("@cat_image", "Image Not Available");
       
      

        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("category.aspx");
    }
    String FilePath(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        string filepath = "~/images/" + "user" + Convert.ToString(HiddenField1.Value) + "img" + ext;
        FileUpload1.SaveAs(MapPath(filepath));
        return filepath;
    }
    bool CheckFileType(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        switch (ext.ToLower())
        {
            case ".gif":
                return true;
            case ".png":
                return true;
            case ".jpg":
                return true;
            case ".jpeg":
                return true;
            default:
                return false;
        }
    }
    protected void HiddenField1_ValueChanged(object sender, EventArgs e)
    {

    }
}

