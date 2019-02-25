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

    OleDbDataAdapter adap = new OleDbDataAdapter();
    OleDbConnection con = new OleDbConnection();
    OleDbCommand com = new OleDbCommand();
    DataSet d = new DataSet();
    string username1;

    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        username1 = Convert.ToString(Session["username1"]);

        con.ConnectionString = ConfigurationManager.AppSettings["con"]; 
        //@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\ASP\WebSite1\App_Data\Database2.mdb;Persist Security Info=True";
        com.CommandType = CommandType.Text;
        com.CommandText = "insert into exam_jan_2012(user_name1,name1,fathername,course,mode_of_exam,center,email,address) values('" + username1 + "','" + Label1.Text.ToString() + "','" + Label2.Text.ToString() + "','" + Label3.Text.ToString() + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "')";
        com.Connection = con;
        adap.InsertCommand = com;
        try
        {
            con.Open();
            com.ExecuteNonQuery();
        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }
        con.Close();


        com.CommandText = "update st_detail set exam_status=1 where user_name1='" + username1 + "'";
        adap.UpdateCommand = com;
        try
        {
            con.Open();
            com.ExecuteNonQuery();
        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }
        con.Close();

        Response.Redirect("22exam_form_submited.aspx");
    
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            Button1.Enabled = true;
        }
        else
        {
            Button1.Enabled = false;
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Offline")
        {
            DropDownList2.Enabled = true;
        }
        else
        {
            DropDownList2.Enabled = false;
        }
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox2.Checked == true)
        {
            DropDownList1.Enabled = true;
            Label1.Enabled = true;
            Label2.Enabled = true;
            Label3.Enabled = true;
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;
            CheckBox1.Enabled = true;
        
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

            Label1.Text = d.Tables[0].Rows[0][2].ToString();
            Label2.Text = d.Tables[0].Rows[0][3].ToString();
            Label3.Text = d.Tables[0].Rows[0][0].ToString();
            TextBox1.Text = d.Tables[0].Rows[0][14].ToString();
            TextBox2.Text = d.Tables[0].Rows[0][9].ToString();

        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }

        con.Close();
    
        
        
        
        }
        else
        {
            DropDownList1.Enabled = false;
            Label1.Enabled = false;
            Label2.Enabled = false;
            Label3.Enabled = false;
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            CheckBox1.Enabled = false;
        }

    }
}
