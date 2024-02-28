using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ServerKeyword : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Graineddb.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        //SELECT top(5) Photoid,Photoname,path,rate, count(*) as VistingCount  FROM userranktb where  location='" + TextBox1.Text + "'  and tage like '%" + TextBox2.Text + "%'  Group by Photoid,Photoname,path,rate
        cmd = new SqlCommand("select FileId,OwerName,FileName,FileSize,Keyword,sum(Rank) as Rank from ranktb Group by FileId,OwerName,FileName,FileSize,Keyword order by Rank DESC", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();


    }
}