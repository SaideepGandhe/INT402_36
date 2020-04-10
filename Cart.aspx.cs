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
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["buyitems"] == null)
                {
                    Button1.Enabled = false;
                }
                else
                {
                    Button1.Enabled = true;
                }
                Session["addProduct"] = false;
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("pid");
                dt.Columns.Add("pname");
                dt.Columns.Add("pImage");
                dt.Columns.Add("pprice");
                dt.Columns.Add("pquantity");
                dt.Columns.Add("ptotalprice");

                if(Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                        SqlDataAdapter da = new SqlDataAdapter("select * from Product where PId=" + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["PId"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["pImage"] = ds.Tables[0].Rows[0]["PImage"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["pprice"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * quantity;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Cart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                        SqlDataAdapter da = new SqlDataAdapter("select * from Product where PId=" + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = sr + 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["PId"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["pImage"] = ds.Tables[0].Rows[0]["PImage"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["pprice"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * quantity;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Cart.aspx");

                    }
                    
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }

            }
            string OrderDate = DateTime.Now.ToShortDateString();
            Session["Orderdate"] = OrderDate;
            orderid();
            Label1.Visible = false;
        }

        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["pprice"].ToString());
                i = i + 1;
            }
            return totalprice;
        }

        public void orderid()
        {
            String alpha = "abCdefghIjklmNopqrStuvwXyz123456789";
            Random r = new Random();
            char[] myArray = new char[5];
            for (int i = 0; i < 5; i++)
            {
                myArray[i] = alpha[(int)(35 * r.NextDouble())];
            }
            String orderid;
            orderid = "Order_Id:" + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            Session["Orderid"] = orderid;
        }
        

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for(int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int srl;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                srl = Convert.ToInt32(qdata);

                if (sr == srl)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for(int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("Cart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count.ToString() == "0")
            {
                Response.Write("<script>alert('Your Cart is Empty');</script>");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Your Order is placed with " + Session["Orderid"].ToString();

            }
            
        }
    }
}