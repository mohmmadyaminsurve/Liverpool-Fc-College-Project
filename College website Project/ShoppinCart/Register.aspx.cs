using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
     
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     SqlConnection Con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Dell\Documents\OnlineProjectData.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FirstName.Text == "" || LastName.Text == "" || UserName.Text == "" || Password.Text == "" || DropDownList1.SelectedIndex == -1 || Address.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Missing Information')", true);
        }
        else
        {
            try
            {
                Con.Open();
                SqlCommand cmd = new SqlCommand("insert into LogInTbl values('" + FirstName.Text + "','" + LastName.Text + "','" + UserName.Text + "', " + Password.Text + ",'" + DropDownList1.SelectedItem.ToString() + "','" + Address.Text + "')", Con);
                cmd.ExecuteNonQuery();
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Congrats!','Now U are Red!','success')", true);
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "wrong()", true);
                Clear();
                Con.Close();


            }
            catch (Exception Ex)
            {
                Response.Redirect(Ex.Message);
            }
        }
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        
    }
    private void Clear()
    {
        FirstName.Text = "";
        LastName.Text = "";
        UserName.Text = "";
        Password.Text = "";
        DropDownList1.SelectedIndex = -1;
        Address.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Clear();
    }
}