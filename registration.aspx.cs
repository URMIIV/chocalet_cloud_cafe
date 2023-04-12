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

public partial class registration : System.Web.UI.Page
{

    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into registration (fname,lname,username,password,gender,dateofbrith,address,city,state,mobileno,email) values(@fname,@lname,@username,@password,@gender,@dateofbrith,@address,@city,@state,@mobileno,@email)";
       SqlCommand cmd = new SqlCommand(query,con);
        string gender;
        if(rb1.Checked==true)
        {
            gender="Male";
        }
        else
        {
            gender="Female";
        

    }
        
        cmd.Parameters.AddWithValue("@fname", fname.Text);
        cmd.Parameters.AddWithValue("@lname", lname.Text);
        cmd.Parameters.AddWithValue("@username", username.Text);
        cmd.Parameters.AddWithValue("@password", password.Text);
        cmd.Parameters.AddWithValue("@gender",gender);
        cmd.Parameters.AddWithValue("@dateofbrith", dob.Text);
        cmd.Parameters.AddWithValue("@address", add.Text);
        cmd.Parameters.AddWithValue("@city", city.Text);
        cmd.Parameters.AddWithValue("@state", state.Text);
        cmd.Parameters.AddWithValue("@mobileno", mob.Text);
        //cmd.Parameters.AddWithValue("@lenno", len.Text);
        cmd.Parameters.AddWithValue("@email", email.Text);
        //cmd.Parameters.AddWithValue("@photo",FileUpload1.FileName);

    
       
        
         {
             rb1.Checked=false;
             rb2.Checked=false;
        }
     cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("home.aspx");
         

    }
}
    

