<%@ Page language="c#" Inherits="ASPNETChat.WebForm1" CodeFile="default.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ChatForm1</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		
		
		<form id="Form1" method="post" runat="server">
		
		
		<font face="tahoma" color="red" size="3"><b>Online Education Hub</b></font>'s Chating Server <br /><br />
		<font face="tahoma">Welcome
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            </font>
		<br />
			<table>
				<asp:Panel Runat="server" ID="pnlLogin">
					<TBODY>
						<TR>
							<TD><font face="tahoma">Enter Nick Name :</font>
								<asp:TextBox id="txtUserName" Runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator id="req1" Runat="server" ControlToValidate="txtUserName" ErrorMessage="8" Display="Dynamic"></asp:RequiredFieldValidator></TD>
						</TR>
						<TR>
							<TD>
								<asp:Button id="btnLogin" Runat="server" Text="LOGIN" onclick="btnLogin_Click"></asp:Button></TD>
						</TR>
				</asp:Panel>
				<asp:Panel Runat="server" ID="pnlChat">
					<TR>
						<TD><font face="tahoma">Teacher's Name :</font>
							<asp:TextBox id="txtOtherUser" Runat="server"></asp:TextBox>
							<asp:RequiredFieldValidator id="Requiredfieldvalidator1" Runat="server" ControlToValidate="txtOtherUser" ErrorMessage="8"
								Display="Dynamic"></asp:RequiredFieldValidator></TD>
					</TR>
					<TR>
						<TD>
							<asp:Button id="btnChat" Runat="server" Text="Chat" onclick="btnChat_Click"></asp:Button></TD>
					</TR>
				</asp:Panel></TBODY>
			</table>
		</form>
	</body>
</HTML>
