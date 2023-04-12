﻿using System;
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


public partial class shipping : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    int total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void btn_billnow_Click(object sender, EventArgs e)
    {
        //SqlDataAdapter sada = new SqlDataAdapter("select pname,price,qty from cart_master where user_id=" + Session["user_id"].ToString(), scon);
        //DataSet ds = new DataSet();
        //sada.Fill(ds);
        ////int s=(Convert.ToInt16(ds.Tables[0].Rows[0][0]));
        //string s1 = ds.Tables[0].Rows[0][0].ToString();
        //int s3 = Convert.ToInt16(ds.Tables[0].Rows[0][1].ToString());
        //int s4 = Convert.ToInt16(ds.Tables[0].Rows[0][2].ToString());



        //string s5 = "insert into bill_master values(" + a + "," + user_id + "," + pid + ",'" + s1 + "'," + s3 + "," + s4 + "," + s3 * s4 + ")";

        //scon.Open();
        //SqlCommand scom = new SqlCommand(s5, scon);

        //scom.ExecuteNonQuery();
        //scon.Close();

        //SqlDataAdapter sada1 = new SqlDataAdapter("select * from bill_master where user_id=" + Session["user_id"].ToString(), scon);
        //sada1.Fill(ds);
        //GridView1.DataSource = ds;
        //GridView1.DataBind();
        //int t1 = 0;
        //for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        //{
        //    t1 = t1 + (s3 * s4);
        //}
        //TextBox1.Text = t1.ToString();

        con.Open();

        string q1 = "insert into shipping(name,address,cno,dt,u_id) values(@name,@address,@cno,@dt,@u_id)";
        SqlCommand cmd2 = new SqlCommand(q1, con);
        cmd2.Parameters.AddWithValue("@name", txtname.Text);
        cmd2.Parameters.AddWithValue("@address", txtadd.Text);
        cmd2.Parameters.AddWithValue("@cno", txtcno.Text);
        cmd2.Parameters.AddWithValue("@dt", DateTime.Now);
        cmd2.Parameters.AddWithValue("@u_id", Session["user_id"]);


        cmd2.ExecuteNonQuery();

        string q2 = "select max(sh_id) from shipping where u_id='" + Session["user_id"] + "'";
        SqlDataAdapter sda1 = new SqlDataAdapter(q2, con);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1);
        int shid = Convert.ToInt16(ds1.Tables[0].Rows[0][0].ToString());


        string query = "select * from cart where username='" + Session["username"] + "'";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            int pro_id = Convert.ToInt16(ds.Tables[0].Rows[i][0].ToString());
            string name = Convert.ToString(ds.Tables[0].Rows[i][2].ToString());
            string price = Convert.ToString(ds.Tables[0].Rows[i][3].ToString());
            string quantity = Convert.ToString(ds.Tables[0].Rows[i][4].ToString());
            string amount = Convert.ToString(ds.Tables[0].Rows[i][5].ToString());

            string query1 = "insert into bill1(username,pro_id,name,price,quantity,total,date,sh_id) values (@username,@pro_id,@name,@price,@quantity,@total,@date,@sh_id)";
            SqlCommand cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("@username", Session["username"]);
            cmd.Parameters.AddWithValue("@pro_id", pro_id);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@quantity", quantity);
            cmd.Parameters.AddWithValue("@total", amount);
            cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString());
            cmd.Parameters.AddWithValue("@sh_id", shid);
            cmd.ExecuteNonQuery();
        }
        con.Close();

        con.Open();
        string q = "delete from cart where username='" + Session["username"] + "'";
        SqlCommand cmd1 = new SqlCommand(q, con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Redirect("bill1.aspx");
    }
    protected void rbcash_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void rbcredit_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel3.Visible = false;
    }
    protected void rbdebit_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = true;
    }
}
