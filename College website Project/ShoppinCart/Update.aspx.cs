﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();

        }
    }

    public void Bind()
    {
        String mycon = ConfigurationManager.ConnectionStrings["OnlineProjectDataConnectionString"].ConnectionString;
        String myquery = "Select * from Product";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        Bind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Bind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Bind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = e.RowIndex;
        GridViewRow row = (GridViewRow)GridView1.Rows[index];
        TextBox text1 = (TextBox)row.FindControl("TextBox1");
        TextBox text2 = (TextBox)row.FindControl("TextBox2");
        FileUpload fu = (FileUpload)row.FindControl("FileUpload1");
        Label label1 = (Label)row.FindControl("Label5");
        Random rand = new Random((int)DateTime.Now.Ticks);
        int numIterations = 0;
        numIterations = rand.Next(1, 1000);
        String constring = ConfigurationManager.ConnectionStrings["OnlineProjectDataConnectionString"].ConnectionString;
        SqlConnection sqlcon = new SqlConnection(constring);
        fu.SaveAs(Server.MapPath("~/Images/") + numIterations + Path.GetFileName(fu.FileName));
        String link = "Images/" + numIterations + Path.GetFileName(fu.FileName);
        String updatedata = "Update Product set ProductName='" + text1.Text + "',Price='" + text2.Text + "', ProductImage='" + link + "' where ProductId=" + label1.Text;
        sqlcon.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = sqlcon;
        cmd.ExecuteNonQuery();
        sqlcon.Close();
        GridView1.EditIndex = -1;
        Bind();
       // Response.Write("<script>alert( 'Product Updated Successfully'); </script>");
        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "wrong()", true);
        
    }
}