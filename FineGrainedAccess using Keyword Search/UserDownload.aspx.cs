using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserDownload : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename= |DataDirectory|\Graineddb.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    protected void lnkView_Click(object sender, EventArgs e)
    {
        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
        string id = grdrow.Cells[0].Text;


        if (TextBox1.Text == "")
        {
            Response.Write("<Script> alert('Please Enter Key') </Script>");
        }
        else
        {
            con.Open();
            cmd = new SqlCommand("select * from filetb where id='" + id + "' and Keys='" + TextBox1.Text + "'", con);
            SqlDataReader dr1 = cmd.ExecuteReader();
            if (dr1.Read())
            {
                
                string aaa = dr1["FilePath"].ToString();

                if (aaa != string.Empty)
                {
                    string filePath = aaa;
                    Response.ContentType = "doc/docx";
                    Response.AddHeader("Content-Disposition", "attachment;filename=\"" + aaa + "\"");
                    Response.TransmitFile(Server.MapPath(filePath));
                    Response.End();
                }

            }

            else
            {
                Response.Write("<Script> alert('File Key Mismatch') </Script>");
            }
            con.Close();

            Response.Write("<Script> alert('" + id + "') </Script>");
        }

        bind();
    }

    private void bind()
    {
        cmd = new SqlCommand("select * from userfiletb where Status='waiting' and UserName='" + Session["uuname"].ToString() + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

        cmd = new SqlCommand("select * from userfiletb where Status='Approved' and UserName='" + Session["uuname"].ToString() + "' ", con);
        SqlDataAdapter da1 = new SqlDataAdapter(cmd);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        GridView2.DataSource = dt1;
        GridView2.DataBind();

    }
}