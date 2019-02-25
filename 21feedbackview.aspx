<%@ Page Language="C#" AutoEventWireup="true" CodeFile="21feedbackview.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
     <table width="100%">
    
    <tr><td><font face='tahoma'><font color='blue'> Welcome Administrator    
        <asp:Label ID="Label1" runat="server"></asp:Label></font> </td><td align="right">
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click"><font 
                            face="tahoma"><font color="blue"><small>Logout</small></font></font></asp:LinkButton>
                    </td></tr>
        
    <tr><td>
        <br />
                Feed Back List by Visiters<br></td><td valign="top" align="right"><font face="tahoma" color="blue"><small><a href="12login_ad.aspx">Show Student&#39;s Accounts wating for Administrator&#39;s Aprovel</a></small></font><br />
                        <font face="tahoma" color="blue"><small><a href="14ad_login.aspx">Show all Active Accounts</a></small></font></td></tr> 
    
    <tr><td><i><small>
        <br />
        </small><br />
        </i>&nbsp;
    </td><td></td></tr>   
    
    </table>
    
   
   
   
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="AccessDataSource1" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="name1" HeaderText="name1" 
                SortExpression="name1" />
            <asp:BoundField DataField="sex" HeaderText="sex" 
                SortExpression="sex"  />
            <asp:BoundField DataField="e_mail_id" HeaderText="e_mail_id" 
                SortExpression="e_mail_id" />
            <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                SortExpression="contact_no" />
            <asp:BoundField DataField="user_view" HeaderText="user_view" 
                SortExpression="user_view" />
            <asp:BoundField DataField="date1" HeaderText="date1" 
                SortExpression="date1" />
            
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/Database2.mdb" onselecting="AccessDataSource1_Selecting" 
        
        SelectCommand="SELECT [name1], [sex], [e_mail_id], [contact_no], [user_view], [date1] FROM [feedback]" 
        OldValuesParameterFormatString="original_{0}">
    </asp:AccessDataSource>
   
   
   
   
   
    </form>
   
   
   
   
    </div>
    </form>



</body>
</html>
