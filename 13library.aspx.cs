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
    int flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        flag = Convert.ToInt16(Session["ckeck_st"]);

        if (flag == 0)
        {
            Response.Redirect("11notloged.aspx");
        }
    }
}
