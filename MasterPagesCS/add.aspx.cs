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
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.
    ConnectionStrings["rezervimiConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void SaveToTheDatabase(object sender, EventArgs e)
    {
        string filename = FileUpload1.PostedFile.FileName;
        int fileLength = FileUpload1.PostedFile.ContentLength;

        byte[] imagebytes = new byte[fileLength];
        FileUpload1.PostedFile.InputStream.Read(imagebytes, 0, fileLength);


        using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.
    ConnectionStrings["rezervimiConnectionString"].ConnectionString))
        {
            string sql = "insert into bus(busno,noseats,image)values(@busno,@noseats,@image)";

            SqlParameter[] prms = new SqlParameter[3];
            prms[0] = new SqlParameter("@busno", SqlDbType.NVarChar,50);
            prms[0].Value =TextBox5.Text;
            prms[1] = new SqlParameter("@noseats", SqlDbType.NVarChar, 50);
            prms[1].Value = TextBox3.Text;
           

            prms[2] = new SqlParameter("@image", SqlDbType.Image,imagebytes.Length);

            prms[2].Value = imagebytes;

            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                cmd.Parameters.AddRange(prms);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }
            

            Label1.Text = "File upload Successfully";
        }
    }
}
