﻿using System;
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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string admin = Login2.UserName;
        string password = Login2.Password;
        if (admin.Equals("admin") && password.Equals("admin"))
        {
            Session["admin"] = admin;
            Response.Redirect("Adminhome.aspx");
        }
        else
        {
            Login2.FailureText = "username dhe fjalekalimi nuk perputhen";
        }
    }
}
