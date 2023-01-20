using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Log_In : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //public static string UserNames = "";
    SqlConnection Con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Dell\Documents\OnlineProjectData.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Button1_Click(object sender, EventArgs e)
    {
        Con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select count(*) from LogInTbl where UserName='" + User.Text + "' and Password='" + Yamin.Text + "'", Con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows[0][0].ToString() == "1")
        {
            // EmployeeName = UnameTb.Text;
            Response.Redirect("Home Page.aspx");

            Con.Close();
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "wrong()", true);
        }
        Con.Close();
        if (User.Text == "" || Yamin.Text =="")
        {
           Response.Write("Enter Password");
        }
        else if (User.Text == "Pass" && Yamin.Text == "Pass")
        {
            Response.Redirect("Add Product.aspx");
        }
        else
        {
            Response.Write("Wrong Admin Password");
        }

         
        
    }

    private void Clear()
    {
        User.Text = "";
        Yamin.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Clear();
    }
}