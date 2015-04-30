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
public partial class Default3 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        
        
    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        WebService ws = new WebService();
        string busno;
        try
        {
            busno =
            GridView1.Rows[e.RowIndex].Cells[1].Text;

            ws.Fshije(int.Parse(busno));
            
        }
        catch { }
    }

    protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDeleting2(object sender, GridViewDeleteEventArgs e)
    {

    }
}