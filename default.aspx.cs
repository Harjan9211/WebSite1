using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ASPNETChat
{
	/// <summary>
	/// Summary description for WebForm1.
	/// </summary>
	public partial class WebForm1 : System.Web.UI.Page
	{
        int flag;
		protected void Page_Load(object sender, System.EventArgs e)
		{

            Label1.Text = Convert.ToString(Session["uname"]);
            flag = Convert.ToInt16(Session["ckeck_st"]);

            if (flag == 0)
            {
                Response.Redirect("11notloged.aspx");
            }
            
            
            
            
            if (Session["UserName"]!=null)
			{
				pnlLogin.Visible=false;
				pnlChat.Visible=true;
			}
			else
			{
				pnlLogin.Visible=true;
				pnlChat.Visible=false;
			}

		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

		protected void btnLogin_Click(object sender, System.EventArgs e)
		{
			Session["UserName"]=txtUserName.Text;
			pnlLogin.Visible=false;
			pnlChat.Visible=true;
		}

		protected void btnChat_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("Chat.aspx?userid="+txtOtherUser.Text);
		}
	}
}
