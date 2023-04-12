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
using System.Drawing;
using System.Text;
using System.Drawing.Imaging;

public partial class capcha2 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Random rnd = new Random();
        string code = GetRandomText();

        Bitmap bitmap = new Bitmap(200, 60, System.Drawing.Imaging.PixelFormat.Format32bppArgb);

        Graphics g = Graphics.FromImage(bitmap);

        Pen pen = new Pen(Color.Yellow);

        Rectangle rect = new Rectangle(0, 0, 200, 60);

        SolidBrush blue = new SolidBrush(Color.CornflowerBlue);

        SolidBrush black = new SolidBrush(Color.Black);

        int counter = 0;

        g.DrawRectangle(pen, rect);

        g.FillRectangle(blue, rect);



        for (int i = 0; i < code.Length; i++)
        {

            g.DrawString(code[i].ToString(), new Font("Tahoma", 10 + rnd.Next(15, 20), FontStyle.Italic), black, new PointF(10 + counter, 10));

            counter += 28;
        }

        DrawRandomLines(g);

        bitmap.Save(Response.OutputStream, ImageFormat.Gif);

        g.Dispose();

        bitmap.Dispose();
    }

    /// <summary>

    /// Method for drawing lines

    /// </summary>

    /// <param name="g"></param>

    private void DrawRandomLines(Graphics g)
    {

        SolidBrush yellow = new SolidBrush(Color.Yellow);

        for (int i = 0; i < 20; i++)

        { g.DrawLines(new Pen(yellow, 1), GetRandomPoints()); }



    }



    /// <summary>

    /// method for gettting random point position

    /// </summary>

    /// <returns></returns>

    private Point[] GetRandomPoints()
    {
        Random rnd = new Random();

        Point[] points = { new Point(rnd.Next(0, 150), rnd.Next(1, 150)), new Point(rnd.Next(0, 200), rnd.Next(1, 190)) };

        return points;

    }



    /// <summary>

    /// Method for generating random text of 5 cahrecters as captcha code

    /// </summary>

    /// <returns></returns>

    private string GetRandomText()
    {

        StringBuilder randomText = new StringBuilder();

        string alphabets = "012345679ACEFGHKLMNPRSWXZabcdefghijkhlmnopqrstuvwxyz";

        Random r = new Random();

        for (int j = 0; j <= 5; j++)

        { randomText.Append(alphabets[r.Next(alphabets.Length)]); }

        Session["CaptchaCode"] = randomText.ToString();

        return Session["CaptchaCode"] as String;

    }

}
