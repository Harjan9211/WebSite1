<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="2login.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<table>
<tr>                
<td>
<img src="images/login.gif"  alt="login image" />
</td>
<td style="width: 327px">
<br />
<br />
    
<table border="0">
    <tr><td colspan="2" align="left">
    
    
    <table><tr>
    
    
        <td width="40px">
       
        </td>
        <td>
       
       
       
       
        <font size="1" face="tahoma">
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" 
                onselectedindexchanged="RadioButtonList2_SelectedIndexChanged">
            
            <asp:ListItem Value="ad">Administrator</asp:ListItem>
            <asp:ListItem Selected="True" Value="st">Student</asp:ListItem>
                
        </asp:RadioButtonList>
        </font>
    </td></tr>
    
    <tr><td colspan=2 align="center"><font color="red" size="1"><asp:Label ID="Label4" runat="server"></asp:Label>
                                                    </font></td></tr>
    
    </table>
    
    
    
    
    </td></tr>
    <tr>
    <td><font size="1" face="tahoma">Username</font></td>
    <td><asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox></td>
    
    </tr>
    <br />
    <tr>
    <td><font size="1" face="tahoma">Password</font></td>
    <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
    
    
    </tr>
    <tr>
    <td colspan="2">
        <asp:Button ID="Button1" runat="server" Text="Login" 
            onclick="Button1_Click" style="height: 26px" />
        </td>
    </tr>
    <tr>
    
    
    <td colspan="2"><font face="tahoma" size="1">
         <font size="1">
        
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="* Please Enter Usename" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        
            <br />
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="* Please Enter Password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
       
       </font>
       
        <br />
       
      <a href="5changepass.aspx"> Forgot Password </a></td> </tr>
    <tr>
    
    <td colspan="2"><font face="tahoma" size="1" ><a href="16confer.aspx">Sign Up </a> </font></td>
    </tr>
    

    
    <asp:Label ID="Label3" runat="server" ></asp:Label>
    

    
</table>


</td>
</tr>
</table>

</center>



</center></b>




</asp:Content>

