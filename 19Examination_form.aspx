<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="19Examination_form.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
<font face="tahoma" color="green" size="4">
<b>Examination Form</b>
</font><br />
<font face="tahoma" color="gray">
<small><i>Junuary 2012</i></small>
</font>
    <br />
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" 
        oncheckedchanged="CheckBox2_CheckedChanged" 
        Text="I am sure i want fill Examination Form" />
    <br />
    <br />
<font face="tahoma">
<table width="730px">
<tr>
<td align="left" width="40%">Mode of Exmination :</td>
<td align="left" width="60%">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        Enabled="False">
        <asp:ListItem>Online</asp:ListItem>
        <asp:ListItem>Offline</asp:ListItem>
    </asp:DropDownList>
    </td>
</tr>



<tr>
<td align="left">Center :</td>
<td align="left">
    <asp:DropDownList ID="DropDownList2" runat="server" Enabled="False">
        <asp:ListItem>Auckland</asp:ListItem>
        <asp:ListItem>Jalandhar</asp:ListItem>
        <asp:ListItem>Ludhiana</asp:ListItem>
        <asp:ListItem>Amritsar</asp:ListItem>
        <asp:ListItem>Pthankot</asp:ListItem>
        <asp:ListItem>Chandighar</asp:ListItem>
        <asp:ListItem>Patiala</asp:ListItem>
    </asp:DropDownList>
    </td>
</tr>



<tr>
<td align="left">Name :</td>
<td align="left">
    <asp:Label ID="Label1" runat="server" Enabled="False"></asp:Label>
    </td>
</tr>

<tr>
<td align="left">Father's Name :</td>
<td align="left">
    <asp:Label ID="Label2" runat="server" Enabled="False"></asp:Label>
    </td>
</tr>

<tr>
<td align="left">Course :</td>
<td align="left">
    <asp:Label ID="Label3" runat="server" Enabled="False"></asp:Label>
    </td>
</tr>


<tr>
<td align="left">E-mail address :</td>
<td align="left">
<font face="tahoma">
    <asp:TextBox ID="TextBox1" runat="server" Width="250px" Enabled="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Email Address not valid" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Please Fill Email address"></asp:RequiredFieldValidator>
</font>

    </td>
</tr>

<tr><td colspan="2" align="left">


<small><font face="tahoma" color="gray"><i>(Date sheet &amp; roll number mailed you on 
    this e-mail address)<br />you can edit this address</i></font></small>
</td></tr>


<tr>
<td align="left">
<font face="tahoma">
    Address :</font></td>
<td align="left">
    <asp:TextBox ID="TextBox2" runat="server" width="350px" Enabled="False"></asp:TextBox >
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Please Enter address"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr><td colspan="2" align="left">


<font face="tahoma">
<small><font face="tahoma" color="gray"><i>
    (Date sheet &amp; roll number send you on this address)<br />you can edit this 
    address 
    </i></font></small>
    </font></td></tr>
    
<tr><td colspan="2" align="center">    
   
   
    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
        oncheckedchanged="CheckBox1_CheckedChanged" 
        Text="I am agree with this information" Enabled="False" />
   
   
</tr></td>
    

<tr><td colspan="2" align="center">


    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
        Enabled="False" />


</td></tr>


</table>
</font>






</center>


</asp:Content>

