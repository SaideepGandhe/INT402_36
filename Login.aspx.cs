using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace AgroBasket
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select FirstName from Register where EmailID=@EmailID and Password=@Password", conn);
                cmd.Parameters.AddWithValue("@EmailID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                conn.Open();
                int i = cmd.ExecuteNonQuery();
                conn.Close();
                if (dt.Rows.Count == 1)
                {
                Master.Label.Text = TextBox1.Text;
                Session["id"] = TextBox1.Text;
                Response.Redirect("~/Product.aspx");
                
                }
                else
                {
                Label1.Visible = true; ;
                }
            
           
        }
    }
}
