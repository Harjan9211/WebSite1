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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbDataAdapter adap = new OleDbDataAdapter();
        OleDbConnection con = new OleDbConnection();
        OleDbCommand com = new OleDbCommand();
        DataSet d = new DataSet();
        
        string username1;
        int flag;

        username1 = Convert.ToString(Session["username1"]);
        con.ConnectionString = ConfigurationManager.AppSettings["con"]; 

        com.CommandType = CommandType.Text;
        com.CommandText = "select * from st_detail where user_name1='" + username1 + "'";
        com.Connection = con;
        adap.SelectCommand = com;

        try
        {
            con.Open();
            adap.Fill(d);
            flag = Convert.ToInt16(d.Tables[0].Rows[0][22]);
                
            if(flag == 0)
            {
                con.Close();
                Response.Redirect("19Examination_form.aspx");
            }
        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }
        con.Close();

        
        
        
        com.CommandText = "select * from exam_jan_2012 where user_name1='" + username1 + "'";
        DataSet da = new DataSet();
        try
        {
            con.Open();
            adap.Fill(da);
        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }


        Label8.Text = Convert.ToString(da.Tables[0].Rows[0][0]);
        Label1.Text = Convert.ToString(da.Tables[0].Rows[0][2]);
        Label2.Text = Convert.ToString(da.Tables[0].Rows[0][3]);
        Label3.Text = Convert.ToString(da.Tables[0].Rows[0][4]);
        Label4.Text = Convert.ToString(da.Tables[0].Rows[0][5]);
        if (Label4.Text.ToString() == "Online")
        {
            Label5.Text = "";
        }
        else
        {
            Label5.Text = Convert.ToString(da.Tables[0].Rows[0][6]);
        }

        Label6.Text = Convert.ToString(da.Tables[0].Rows[0][7]);
        Label7.Text = Convert.ToString(da.Tables[0].Rows[0][8]);

        con.Close();
    
    
    }
}
