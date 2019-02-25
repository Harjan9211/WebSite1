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
    OleDbCommand com = new OleDbCommand();
    OleDbConnection con = new OleDbConnection();
    DataSet d = new DataSet();
    int i, num, table1, table2, table3, table4;
    string uname, match;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox24_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        Random rand = new Random();
        //Response.Write(rand.Next(0, 10)); 


        con.ConnectionString = ConfigurationManager.AppSettings["con"]; 
        //@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Assn\WebSite1\App_Data\Database2.mdb;Persist Security Info=True";
        com.CommandType = CommandType.Text;
        com.CommandText = "select * from st_detail";
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

        num = rand.Next(300, 9900);


    point1:
        num = num + 1;
        uname = TextBox2.Text + num.ToString();

        for (i = 0; i <= d.Tables[0].Rows.Count - 1; i++)
        {
            if (uname.ToString() == d.Tables[0].Rows[i][1].ToString())
            {
                match = "ture";
            }
        }
        if (match == "ture")
        {
            goto point1;
        }
        con.Close();


        con.ConnectionString = ConfigurationManager.AppSettings["con"]; 
        //@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Assn\WebSite1\App_Data\Database2.mdb;Persist Security Info=True";
        com.CommandType = CommandType.Text;
        com.CommandText = "insert into st_detail values('" + DropDownList1.SelectedValue + "','" + uname + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + RadioButtonList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + TextBox22.Text + "','st',0,'" + DropDownList8.SelectedValue + "','" + TextBox13.Text+"',0)";
        adap.InsertCommand = com;
        com.Connection = con;

        try
        {
            con.Open();
            com.ExecuteNonQuery();
            table1 = 1;
        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }
        con.Close();


        com.CommandText = "insert into st_fee_detail values('" + uname + "','" + TextBox24.Text + "','" + TextBox25.Text + "','" + TextBox26.Text + "','" + TextBox27.Text + "','" + TextBox28.Text + "','" + TextBox29.Text + "')";
        try
        {
            con.Open();
            com.ExecuteNonQuery();
            table2 = 1;
        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }
        con.Close();





        com.CommandText = "insert into st_educational_detail values('" + uname + "','" + TextBox30.Text + "','" + TextBox31.Text + "','" + DropDownList4.SelectedValue + "','" + TextBox37.Text + "','" + TextBox41.Text + "','" + TextBox32.Text + "','" + TextBox33.Text + "','" + DropDownList5.SelectedValue + "','" + TextBox38.Text + "','" + TextBox42.Text + "','" + TextBox34.Text + "','" + TextBox35.Text + "','" + DropDownList6.SelectedValue + "','" + TextBox39.Text + "','" + TextBox43.Text + "','" + TextBox36.Text + "','" + DropDownList7.SelectedValue + "','" + TextBox40.Text + "','" + TextBox44.Text + "')";
        try
        {
            con.Open();
            com.ExecuteNonQuery();
            table3 = 1;
        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }
        con.Close();



        com.CommandText = "insert into st_document_detail values('" + uname + "'," + CheckBox1.Checked + "," + CheckBox2.Checked + "," + CheckBox3.Checked + "," + CheckBox4.Checked + "," + CheckBox5.Checked + "," + CheckBox6.Checked + "," + CheckBox7.Checked + "," + CheckBox9.Checked + "," + CheckBox10.Checked + "," + CheckBox11.Checked + ")";
        try
        {
            con.Open();
            com.ExecuteNonQuery();
            table4 = 1;
        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }
        con.Close();
        Session["name"] = TextBox2.Text.ToString();
        Session["uname"] = uname.ToString();

        if (table1 == 1 && table2 == 1 && table3 == 1 && table4 == 1)
        {
            Response.Redirect("7registered.aspx");

        }




    }
    protected void TextBox34_TextChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
}