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
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DataTable table = new DataTable();
        using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.
    ConnectionStrings["rezervimiConnectionString"].ConnectionString))
        {
            string sql = "SELECT busno,noseats,image FROM bus";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
                {
                    conn.Open();
                    ad.Fill(table);
                    conn.Close();
                }
            }
        }
        GridView1.DataSource = table;
        GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Gridview1_Rowcommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Cancel")
        {
        Response.Redirect("booking.aspx");


 
        }
    }


}