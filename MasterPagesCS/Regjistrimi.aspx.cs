using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.IO;
using System.Text;
public partial class Regjistrimi : System.Web.UI.Page
{
    string strKonektimi = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    { 
        Session["Name"]=txtuser.Text;


       
        
    }
   
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        WebService ws = new WebService();
       SqlConnection hookUp = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
       string  strInsert = "INSERT INTO tbl_kyqja(username,emri,mbiemri,fjalekalimi,datelindja,gjinia,email)"+
      " VALUES (@Username,@FName,@LName,@Password,@Birthdate,@Genre,@Email)";
       
       SqlCommand sqlCmd = new SqlCommand(strInsert, hookUp);

        sqlCmd.Parameters.Add("@Username", txtuser.Text);
        sqlCmd.Parameters.Add("@Password", ws.Encrypt(txtpwd.Text.Trim()));
        sqlCmd.Parameters.Add("@Birthdate", Birthdate.Text);
        sqlCmd.Parameters.Add("@Genre", Genre.SelectedValue);
        sqlCmd.Parameters.Add("@FName", txtfname.Text);
        sqlCmd.Parameters.Add("@LName", txtlname.Text);
        sqlCmd.Parameters.Add("@Email", txtemail.Text);

        

        Captcha1.ValidateCaptcha(txtcaptcha.Text.Trim());
        if (!Captcha1.UserValidated)
        {
            lblErrcaptcha.Text = "Captcha nuk eshte shenuar mire";
            
        }
        else
        {
            hookUp.Open();
            sqlCmd.ExecuteNonQuery();
            Session["name"] = txtuser.Text;
            hookUp.Close();
            Response.Redirect("LogIn.aspx");
        }
    }
    
    protected void txtuser_TextChanged(object sender, EventArgs e)
    {
       SqlConnection hookUp = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
        hookUp.Open();
        SqlCommand sqlCmd = new SqlCommand("SELECT * FROM tbl_kyqja WHERE username=@Username", hookUp);
        sqlCmd.Parameters.Add("@Username", txtuser.Text);
        SqlDataReader dr = sqlCmd.ExecuteReader();
        if (dr.Read())
        {
            lblErruser.Text = "Username ekziston";
            btnsubmit.Enabled= false;
        }
        else
        {
            lblErruser.ForeColor = System.Drawing.Color.Green;
            lblErruser.Text = "Username ne dispozicion";
            btnsubmit.Enabled = true;
        }

        hookUp.Close();
    }
    protected void btnanulo_Click(object sender, EventArgs e)
    {
        txtuser.Text = "";
        txtcnmpwd.Text = "";
        txtfname.Text = "";
        txtlname.Text = "";
        txtpwd.Text = "";
        txtuser.Text = "";
        txtemail.Text = "";
        Genre.Text = "";
        Birthdate.Text = "";

    }
    protected void tnfshi_Click(object sender, EventArgs e)
    {

    }
   
    protected void txtcaptcha0_TextChanged(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
}
    