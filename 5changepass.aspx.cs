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
    OleDbConnection con = new OleDbConnection();
    OleDbCommand com = new OleDbCommand();
    DataSet d = new DataSet();
    string flag2,match;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if(TextBox3.Text.ToString() == TextBox4.Text.ToString())
        {
                Label1.Text = "";
                con.ConnectionString = ConfigurationManager.AppSettings["con"]; 
                com.CommandType = CommandType.Text;
                com.CommandText = "update st_detail set password1='" + TextBox3.Text + "' where user_name='" + TextBox1.Text + "' and Security_q='" + DropDownList1.SelectedItem.Value + "' and Security_answer='" + TextBox2.Text + "';";    
            //com.CommandText = "update informatio set password1='" + TextBox3.Text.ToString() + "' where uname='" + TextBox1.Text.ToString() + "' and squestion='" + DropDownList1.SelectedItem.Value + "' and sanswer='" + TextBox2.Text.ToString() + "';";
                com.Connection = con;
                adap.UpdateCommand = com;

                try
                {
                    con.Open();
                    int i = com.ExecuteNonQuery();
                    if (i != 0)
                    {
                        Response.Redirect("6passchanged.aspx");
                    }
                    else
                    {
                        Label1.Text = "* Infromation not valid";
                    }
                    // Response.Write("Password changed");
                }
                catch (Exception e1)
                {
                   // Response.Write(e1.ToString());
                    Label1.Text = "* Infromation not valid";
                }

                con.Close();
            }
            else
            {
                  Label1.Text = "* Retype Password Not Matched ";
            }
    }
    

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.AppSettings["con"]; 
        com.CommandType = CommandType.Text;
        com.CommandText = "select * from informatio";
        com.Connection = con;
        adap.SelectCommand = com;
        int i;
        
        try
        {
            con.Open();
            adap.Fill(d);
        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }

        for (i = 0; i <= d.Tables[0].Rows.Count - 1; i++)
        {
            if (TextBox1.Text == d.Tables[0].Rows[i][0].ToString())
            {
                match = "ture";
            }
        }
        if (match != "ture")
        {
            Label1.Text = "user name is not valid";
            Button1.Enabled = false;
        }
        else
        {
            Button1.Enabled = true;
            Label1.Text = "";
        }
        con.Close();
    }
}