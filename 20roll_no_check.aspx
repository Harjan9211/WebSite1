<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="20roll_no_check.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<font face="tahoma" color="green"><b><h3>You alredy fill examination form</h3>
    </b></font><font face="tahoma" color="gray"><i><big>Your detail :<br />
    <br />
    </big></i></font>


<table width="730px">
<tr><td align="left">Roll Number</td><td align="left"> 
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                            </td></tr>
<tr><td width="40%" align="left">Name</td><td width="60%" align="left">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td></tr>
<tr><td align="left">Father's Name</td><td align="left">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </td></tr>
<tr><td align="left">Course</td><td align="left">
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </td></tr>
<tr><td align="left">Mode of Exam</td><td align="left">
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </td></tr>
<tr><td align="left">Center</td><td align="left">
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </td></tr>
<tr><td align="left" valign="top">Email address<br /><font face="tahoma" color="gray"><small>(Your rollnumber & datesheet mailed on this E-mail address) </small></font></td><td align="left" valign="top">
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
    </td></tr>
<tr><td align="left" valign="top">Address <br /><font face="tahoma" color="gray"><small>(Your rollnumber(Your rollnumber &amp; datesheet Posted on this Address) </small></font></td><td align="left" valign="top">
    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
    </td></tr>

<tr><td colspan="2">
    <br />
    <br /><a href="8afterlogin.aspx">Click here to go back</td></tr><table>

</center>


</asp:Content>

