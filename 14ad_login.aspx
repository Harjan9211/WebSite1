<%@ Page Language="C#" AutoEventWireup="true" CodeFile="14ad_login.aspx.cs" Inherits="Default2" %>

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
                List of&nbsp; Student&#39;s Active Accounts<br></td><td valign="top" align="right"><font face="tahoma" color="blue"><small><a href="12login_ad.aspx">Show Student&#39;s Accounts wating for Administrator&#39;s Aprovel</a><br /><a href="21feedbackview.aspx">User Feedback</a></small></font></td></tr> 
    
    <tr><td><i><small>
        <br />
        (to deactivate account press Edit and set status 0)</small><br />
        </i>&nbsp;
    </td><td></td></tr>   
    
    </table>
    
   
   
   
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="user_name1" DataSourceID="AccessDataSource1" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="courses" HeaderText="courses" 
                SortExpression="courses" />
            <asp:BoundField DataField="st_name" HeaderText="st_name" 
                SortExpression="st_name"  />
            <asp:BoundField DataField="sex" HeaderText="sex" 
                SortExpression="sex" />
            <asp:BoundField DataField="dob" HeaderText="dob" 
                SortExpression="dob" />
            <asp:BoundField DataField="Ac_states" HeaderText="Ac_states" 
                SortExpression="Ac_states" />
            <asp:BoundField DataField="user_name1" HeaderText="user_name1" 
                SortExpression="user_name1" ReadOnly="True" />
            
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/Database2.mdb" onselecting="AccessDataSource1_Selecting" 
        
        SelectCommand="SELECT [courses], [st_name], [sex], [dob], [Ac_states], [user_name1] FROM [st_detail] WHERE ([Ac_states] = ?)" 
        OldValuesParameterFormatString="original_{0}" 
            DeleteCommand="DELETE FROM [st_detail] WHERE (([user_name1] = ?) OR ([user_name1] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [st_detail] ([courses], [st_name], [sex], [dob], [Ac_states], [user_name1]) VALUES (?, ?, ?, ?, ?, ?)" 
            
            UpdateCommand="UPDATE [st_detail] SET [courses] = @courses, [st_name] = @st_name, [sex] = @sex, [dob] = @dob, [Ac_states] = @Ac_states WHERE (([user_name1] = @original_user_name1) OR ([user_name1] IS NULL AND @original_user_name1 IS NULL))">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="Ac_states" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="original_user_name1" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="courses" Type="String" />
            <asp:Parameter Name="st_name" Type="String" />
            <asp:Parameter Name="sex" Type="String" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="Ac_states" Type="Int32" />
            <asp:Parameter Name="original_user_name1" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="courses" Type="String" />
            <asp:Parameter Name="st_name" Type="String" />
            <asp:Parameter Name="sex" Type="String" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="Ac_states" Type="Int32" />
            <asp:Parameter Name="user_name1" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
   
   
   
   
   
    </form>
   
   
   
   
    </div>
    </form>



</body>
</html>
