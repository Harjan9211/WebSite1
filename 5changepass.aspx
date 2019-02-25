<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="5changepass.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
   <a href="2login.aspx">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="4registration.aspx">Register</a><br /><br />
   
   <font face="tahoma" color="green" size="2"><b>Fill Your Personal Detail To Recover 
        Your Password</b></font>
      
    <br />
    <table> 
    <tr><td colspan="2" align="center"><font face="tahoma" color="red" size="1">
        <asp:Label ID="Label1" runat="server"></asp:Label></font>
        </td></tr>

    <tr><td align="left">
        User Name</td>
        <td align="left"><asp:TextBox ID="TextBox1" runat="server" 
                ontextchanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="* Please Enter Username"></asp:RequiredFieldValidator>
        </td>
        <br />
        </tr>
        <tr>
        <td align="left">
            Security Qesution</td>
        <td align="left">
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="one">What is your first school name</asp:ListItem>
            <asp:ListItem Value="two">Your mother middel name</asp:ListItem>
            <asp:ListItem Value="three">Your pet name</asp:ListItem>
        </asp:DropDownList>
        <br />
        </td>
        </tr>
        <tr>
        <td align="left">
            Security Answer</td><td align="left"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*  Please Enter Security Answer"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td align="left">
        
            New Password</td><td align="left"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="* Please Enter New Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
        <td align="left">
            Retype Password</td><td align="left"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="* Retype your Password"></asp:RequiredFieldValidator>
            </td>
        
       
       </tr>
       <tr>
        <td colspan=2 align="center">
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /></td></tr>
    </table>
</center>
</asp:Content>

