using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class booking : System.Web.UI.Page
{
    DateTime d1;
    DateTime d2;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.
    ConnectionStrings["rezervimiConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        con.Open();



        cmd = new SqlCommand("select * from booking1 where busno='" + DropDownList1.SelectedItem.Text + "'", con);

        
       SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            d1 = dr.GetDateTime(2);
            d2 = dr.GetDateTime(3);




            if (DateTime.Parse(TextBox3.Text) >= d1 && DateTime.Parse(TextBox4.Text) <= d2)
            {

                Label9.Text = "autobusi eshte i rezervuar nga dikush tjeter";
                con.Close();
                goto a;
            }
            
           
        }
        con.Close();
        con.Open();
        
            cmd.CommandText = "Insert Into booking1 Values('" + DropDownList1.SelectedItem.Text + "','" + TextBox2.Text + "','" + DateTime.Parse(TextBox3.Text) + "','" + DateTime.Parse(TextBox4.Text) + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
            cmd.ExecuteNonQuery();
            Label9.Text = "Rezervimi me sukses!!!";
            con.Close();

            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
          

            Label14.Text = "";
            Label9.Text = "";
        
    a:
        ;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.
    ConnectionStrings["rezervimiConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        SqlDataReader dr;
        con.Open();
        cmd = new SqlCommand("select * from booking1 where busno='" + DropDownList1.SelectedItem.Text + "'", con);

     
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
             d1 = dr.GetDateTime(2);
             d2 = dr.GetDateTime(3);

        }


        if(DateTime.Parse(TextBox3.Text)>=d1 &&DateTime.Parse( TextBox4.Text)<=d2)
        {

            Label14.Text = "Autobusi eshte tashme i rezervuar";

        }

        else
        {

            Label14.Text = "Mund ta rezervoni";
         
            
        }

           
            con.Close();
        }
    }


