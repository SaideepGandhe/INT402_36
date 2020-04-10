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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            HyperLink1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Register(FirstName,LastName,EmailID,Gender,Phone,Address,Password)values (@FirstName,@LastName,@EmailID,@Gender,@Phone,@Address,@Password)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
                cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
                cmd.Parameters.AddWithValue("@EmailID", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Phone", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Address", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox6.Text);
                cmd.ExecuteNonQuery();

                Label1.Visible = true;
                HyperLink1.Visible = true;

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}