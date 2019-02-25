using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Data.OleDb;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    int i, j;
    string flag, ac_type;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbDataAdapter adap = new OleDbDataAdapter();
        OleDbConnection con = new OleDbConnection();
        OleDbCommand com = new OleDbCommand();
        DataSet d = new DataSet();



        con.ConnectionString = ConfigurationManager.AppSettings["con"];
        //@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\ASP\WebSite1\App_Data\Database2.mdb;Persist Security Info=True";

        com.CommandType = CommandType.Text;
        com.CommandText = "select * from st_detail";
        com.Connection = con;
        adap.SelectCommand = com;

        try
        {
            con.Open();
            adap.Fill(d);
        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }
       
        flag = "Invaild Username";
       
        for (i = 0; i <= d.Tables[0].Rows.Count - 1; i++)
        {
            if (TextBox1.Text == d.Tables[0].Rows[i][1].ToString() && TextBox2.Text == d.Tables[0].Rows[i][17].ToString())
            {
                Session["username1"]=d.Tables[0].Rows[i][1].ToString();
                Session["uname"] = d.Tables[0].Rows[i][2].ToString();
                //ac_type = d.Tables[0].Rows[i][10].ToString();
                //flag = "wellcome";
                if (RadioButtonList2.SelectedValue.ToString() == "st" && d.Tables[0].Rows[i][18].ToString() == "st")
                {
                    ac_type = "st";
                    if (d.Tables[0].Rows[i][19].ToString() == "1")// if status is 1 then account accessable
                    {
                        flag = "wellcome";
                    }
                    else
                    {
                        flag = "Your Account Now Not Proved By Administrator";//status is 0 under waiting administrator approvel
                    }
                }
                else
                {
                    if (RadioButtonList2.SelectedValue == "ad" && d.Tables[0].Rows[i][18].ToString() == "ad")
                    {
                        ac_type = "ad";
                        flag = "wellcome";
                    }
                }
                break;
            }
            else if (i == d.Tables[0].Rows.Count - 1)
            {
                for (j = 0; j <= d.Tables[0].Rows.Count - 1; j++)
                {
                    if (TextBox1.Text.ToString() == d.Tables[0].Rows[j][1].ToString())
                    {
                        flag = "Invaild Password";
                        break;
                    }

                    else
                    {
                        flag = "Invaild Username";
                    }
                }
            }
        }




        if (flag == "wellcome" && ac_type == "st")
        {

            Session["ckeck_st"] = 1;
            Response.Redirect("8afterlogin.aspx");

        }
        else
        {
            if (flag == "wellcome" && ac_type == "ad")
            {
                Session["ckeck_st"] = 1;
                Response.Redirect("12login_ad.aspx");
            }
            else
            {
                Label4.Text = flag.ToString();
                //Label4.Text = ac_type;       
            }
        }

    }
    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label4.Text = "";
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Label4.Text = "";
    }
}
