<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="16confer.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<font face="tahoma" >
<font color="red"><big><b> Online Education Hub, Auckland</big></b> </font>
<br /><br /> Registration Form 
 
  <br /><br />
    Read
Instructions for submission of Application for<b> Online Education Hub </b>Registraion&nbsp;
    <br />
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
        oncheckedchanged="CheckBox1_CheckedChanged" Text="I Agree" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Enabled="False" onclick="Button1_Click" 
        Text="Go Register" />
    <br />

</font>
</center>


</asp:Content>

