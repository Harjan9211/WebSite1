<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="8afterlogin.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><font face="tahoma">

<table>
    <tr>
        <font color="blue"><small><td width="730px" align="left">Welcome <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
        <td align="right">
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click"><font face="tahoma"><font color="blue"><small>Logout</small></font></font></asp:LinkButton></td></small></font>    
    </tr>
<tr><td colspan="2"><br /><br /><a href="13library.aspx">Library</a></td></tr>
<tr><td colspan="2"><br /><a href="default.aspx" target="_blank">Chat With Teacher's</a><br />
    <br />
    <a href="20roll_no_check.aspx">Exmination Form</a>
    
    </td></tr>



</table>
 
    



</font></center>
</asp:Content>

