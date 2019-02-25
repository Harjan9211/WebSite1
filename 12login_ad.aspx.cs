using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Data;
using System.Data.OleDb;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    int flag;
    string uname;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();

        Response.Buffer = true;
        Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
        Response.Expires = -1500;
        Response.CacheControl = "no-cache";
       
        //uname = Convert.ToString(Session["uname"]); // write user's name on lable

        //flag = Convert.ToInt16(Session["ckeck_st"]);// check user login or not
        //if (flag == 0)  //if user not logined
        //{
        //    Response.Redirect("11notloged.aspx");//then page moves on error page
        //}

       
       
    }
    protected void AccessDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
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
}
