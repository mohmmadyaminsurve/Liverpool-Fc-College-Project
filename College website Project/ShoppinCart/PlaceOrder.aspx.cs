using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Collections.Specialized;

public partial class PlaceOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("productid");
            dt.Columns.Add("productname");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("productimage");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Dell\Documents\OnlineProjectData.mdf;Integrated Security=True;Connect Timeout=30";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from productdetail where productid=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                    dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                    dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["total"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("addtocart.aspx");

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Dell\Documents\OnlineProjectData.mdf;Integrated Security=True;Connect Timeout=30";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from productdetail where Product_id=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                    dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                    dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");

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
                    GridView1.FooterRow.Cells[6].Text =  grandtotal().ToString();

                }


            }


        }
        Label4.Text = DateTime.Now.ToShortDateString();
        findorderid();


    }

    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;

    }

    public void findorderid()
    {
        string pass = "abcdefghijklmnopqrstuvwxyz123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];
        }
        String orderid;
        orderid = "Order" + DateTime.Now.Hour.ToString() +  DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString();

        Label3.Text = orderid;



    }

    public void saveaddress()
    {
        string updatepass = "insert into orderaddress(orderid,address,mobilenumber,username)values('" + Label3.Text + "', '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        string mycon1 = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Dell\Documents\OnlineProjectData.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection s = new SqlConnection(mycon1);
        s.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = s;
        cmd1.ExecuteNonQuery();
        s.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = (DataTable)Session["buyitems"];
        //Label8.Text = " Cash On Delivery";

        //string user = Session["username"].ToString();

        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            string updatepass = "insert into orderdetails(orderid,sno,productid,productname,price,quantity,dateoforder) values('" + Label3.Text + "', " + dt.Rows[i]["sno"] + ", " + dt.Rows[i]["productid"] + ", '" + dt.Rows[i]["productname"] + "'," + dt.Rows[i]["price"] + "," + dt.Rows[i]["quantity"] + ", '" + Label4.Text + "')";
            string mycon1 = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Dell\Documents\OnlineProjectData.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection s = new SqlConnection(mycon1);
            s.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = s;
            cmd1.ExecuteNonQuery();
            s.Close();
             
        }
        saveaddress();
       // ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "wrong()", true);
      //  Response.Write("Order PLaced Sucessfully");
        Response.Redirect("Bill.aspx?oid="+Label3.Text);
        
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}