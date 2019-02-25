using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

public partial class Default4 : System.Web.UI.Page
{
    OleDbDataAdapter adap = new OleDbDataAdapter();
    OleDbCommand com = new OleDbCommand();
    OleDbConnection con = new OleDbConnection();
    DataSet d = new DataSet();
    int i;
    string userview;
    DateTime dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
        
       
      
    }
    
    
protected void  Button1_Click1(object sender, EventArgs e)
{

    userview = Request.Form.Get(8);
    dt = DateTime.Now;






    con.ConnectionString = ConfigurationManager.AppSettings["con"]; 
        com.CommandType = CommandType.Text;
        
        //com.CommandText = "insert into feedback values(1,'" + TextBox5.Text + "','" + RadioButtonList1.SelectedValue + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + userview + "','" + dt + "')";
        com.CommandText = "insert into feedback (name1, sex, e_mail_id, contact_no, user_view, date1) values('" + TextBox5.Text + "','" + RadioButtonList1.SelectedValue + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + userview + "','" + dt + "')";
        
        adap.InsertCommand = com;
        com.Connection = con;
    
    
    
    
    
    
    
    
            try
            {
                con.Open();
                com.ExecuteNonQuery();
                Session["feedback"] = "Thanks " + TextBox5.Text + ",  for your Feedback";

                Response.Redirect("17thanksfeedback.aspx");
            }
            catch (Exception e1)
            {
                Response.Write(e1.ToString());
            }

}
protected void TextBox7_TextChanged(object sender, EventArgs e)
{

}
protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
{

}
}
