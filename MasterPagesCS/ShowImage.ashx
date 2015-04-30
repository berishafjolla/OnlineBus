<%@ WebHandler Language="C#" Class="ShowImage" %>

using System;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;


public class ShowImage : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        if (context.Request.QueryString["busno"] == null) return;

        
        string pictureId = context.Request.QueryString["busno"];
        using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.
    ConnectionStrings["rezervimiConnectionString"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT image FROM bus WHERE busno = @busno", conn))
            {
                cmd.Parameters.Add(new SqlParameter("@busno", pictureId));
                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                {
                    reader.Read();
                    context.Response.BinaryWrite((Byte[])reader[reader.GetOrdinal("image")]);
                    reader.Close();
                }
            }
        }
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }   
    }

}