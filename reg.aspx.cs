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


public partial class reg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    int total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
        //change at sqlexpress(use double \) and datadirectory
        con.Open();
       // try
       // {
        if (!IsPostBack)
        {
            String query = "select * from registration where username='" + Session["username"] + "'";

            SqlCommand com = new SqlCommand(query, con);
            com.CommandType = CommandType.Text;
            SqlDataReader rdr = com.ExecuteReader();
            if (rdr.Read())
            {
                HiddenField1.Value = Convert.ToString(rdr["r_id"]);
                fname.Text = Convert.ToString(rdr["fname"]);
                lname.Text = Convert.ToString(rdr["lname"]);
                username.Text = Convert.ToString(rdr["username"]);
                password.Text = Convert.ToString(rdr["password"]);
                gender.Text = Convert.ToString(rdr["gender"]);

              dateofbrith.Text = Convert.ToString(rdr["dateofbrith"]);
                address.Text = Convert.ToString(rdr["address"]);
                city.Text = Convert.ToString(rdr["city"]);
                state.Text = Convert.ToString(rdr["state"]);
                mobilenumber.Text = Convert.ToString(rdr["mobileno"]);
                email.Text = Convert.ToString(rdr["email"]);



            }
        }
      //  }
       // catch { }


 
    }
        protected void btnupdate_Click(object sender, EventArgs e)
        {
            con.Open();
            String query;
            query = "update registration set fname=@fname,lname=@lname,username = @username,password=@password,gender=@gender,dateofbrith=@dateofbrith,address=@address,city=@city,state=@state,mobileno=@mobileno,email=@email where  username='" + Session["username"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
           cmd.CommandType = CommandType.Text;
            
            cmd.Parameters.AddWithValue("@fname", fname.Text);
            cmd.Parameters.AddWithValue("@lname", lname.Text);
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            cmd.Parameters.AddWithValue("@gender", gender.Text);
            cmd.Parameters.AddWithValue("@dateofbrith", dateofbrith.Text);
            cmd.Parameters.AddWithValue("@address", address.Text);
            cmd.Parameters.AddWithValue("@city", city.Text);
            cmd.Parameters.AddWithValue("@state", state.Text);
            cmd.Parameters.AddWithValue("@mobileno", mobilenumber.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);


          cmd.ExecuteNonQuery();
         // lblmess.Text = "UPDATE DETAILS";

            con.Close();
           Response.Redirect("home.aspx");
        }

    
}




