using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
 

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        WebService ws = new WebService();
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.
    ConnectionStrings["DatabaseConnectionString"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from tbl_kyqja where username =@username and fjalekalimi=@password", con);
        cmd.Parameters.AddWithValue("@username", txtUserName.Text);
        cmd.Parameters.AddWithValue("@password",ws.Encrypt(txtPWD.Text.Trim()));
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("home.aspx");
            string mesazhi = "mire se erdhet" + txtUserName.Text;
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert(mesazhi)</script>");
           
        }
          
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Fjalekalimi ose username i gabuar')</script>");
            }
            //ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Fjalekalimi ose username i gabuar')</script>");
        

    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void admin_Click(object sender, EventArgs e)
    {


    }
}