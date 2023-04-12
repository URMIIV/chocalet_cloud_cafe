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


public partial class editcart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            con.Open();
            String query = "select * from cart where cart_id=" + Request.QueryString["id"];
            SqlCommand com = new SqlCommand(query, con);
            com.CommandType = CommandType.Text;
            SqlDataReader rdr = com.ExecuteReader();
            if (rdr.Read())
            {
                lblpro_id.Text = Convert.ToString(rdr["pro_id"]);
                lblname.Text = Convert.ToString(rdr["name"]);
                lblprice.Text = Convert.ToString(rdr["price"]);
                txtquantity.Text = Convert.ToString(rdr["quantity"]);
                lblamount.Text = Convert.ToString(rdr["amount"]);
                Image1.ImageUrl = Convert.ToString(rdr["c_img"]);
                HiddenField1.Value = Convert.ToString(rdr["cat_id"]);
            }
            
            con.Close();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        int amount = Convert.ToInt32(lblprice.Text) * Convert.ToInt32(txtquantity.Text);
        string qrystr;
        qrystr = "update cart set quantity ='" + txtquantity.Text + "',amount='" + amount + "'  WHERE cart_id=" + HiddenField1.Value;
        con.Open();
        SqlCommand cmd = new SqlCommand(qrystr, con);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("cart.aspx");
    }
    protected void txtquantity_TextChanged(object sender, EventArgs e)
    {

    }
}
