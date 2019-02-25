<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="4feedback.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
        <br /><br />
        <font face="tahoma" color="green" size="5"><b>Feed Back</b><br /><br />
    </font>

<font face="tahoma" ><small>
  <table>
 
 
        <tr><td align="left">
            Name :</td><td align="left"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="* Please Enter Your Name"></asp:RequiredFieldValidator>
            </td></tr>
      

        <tr><td align="left">
            Sex :</td><td align="left"><asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem Selected="True">Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td></tr>
        <tr><td align="left">
            E-mail Id:</td><td align="left"><asp:TextBox ID="TextBox7" runat="server" 
                    ontextchanged="TextBox7_TextChanged"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="* Please Enter Valid Email Id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td></tr>
        
        <tr><td align="left">contact No.</td><td align="left">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBox9" ErrorMessage="* Please Enter Contact Number"></asp:RequiredFieldValidator>
            </td></tr>
        
        <tr><td>
            Enter your<br />
            &nbsp;view's about<br />
            <b>Online Educatiobn Hub</b></td>
        
        <td align="left">
            <textarea id="TextArea1" name="S1"></textarea></td></tr>
        
   
        <tr><td>&nbsp;</td><td align="left">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                Text="Submit" />
            </td></tr>
        
        
        <tr><td colspan="2" align="center">
            &nbsp;</td></tr>
                
                
                
                
                
        </table>
   
</small></font>

</center>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

<script language="javascript">

         var a = 49, b = 65;
         var c = 100;
         var d = 70;
  function show()
  {
      if (a == 57)
      {
         a = 49;
      }
      var main = document.getElementById('txt1');
      var a1 = String.fromCharCode(a);
      var b1 = String.fromCharCode(b);
      var c1 = String.fromCharCode(c);
      var d1 = String.fromCharCode(d);
      main.value = a1 + b1 + c1 + d1;
     a = a + 1;
     b = b + 1;
     c = c + 1;
     d = d + 1;
  }

function Image13_onclick() {

}

function Image10_onclick() {

}

  </script>
<style type="text/css">
    #TextArea1
    {
        height: 126px;
        width: 261px;
    }
</style>





















</asp:Content>


