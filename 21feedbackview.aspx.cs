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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        string nextpage = "10logoutsucc.aspx";
        Response.Write("<script language='javascript'>");
        Response.Write("{");
        Response.Write(" var Backlen=history.length;");
        Response.Write(" history.go(-Backlen);");
        Response.Write(" window.location.href='" + nextpage + "'; ");
        Response.Write("}");
        Response.Write("</script>");


    }
    protected void AccessDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
