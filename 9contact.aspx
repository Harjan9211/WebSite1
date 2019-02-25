<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="9contact.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <font face="forte" color="Green" size="5">Important Contacts</font>




<font face="tahoma" size="1">
<table border="0" align="center" cellpadding="5" cellspacing="1" >
<tr><td colspan="3"><hr /><br /></td></tr>

<tr><td align="left" class="tdfaculty" width="230px" ><b>
    Designation</b></td><td align="left" class="tdfaculty" width="130px" ><b>Email 
        Address</b></td><td align="left" class="tdfaculty" width="130px"><b>
        Telephone</b></td></tr><tr><td align="left" class="tdfaculty">Single Window 
        Enquiry (General, Admission and Examinations)</td><td align="left" class="tdfaculty"></td><td align="left" class="tdfaculty">
        2784869, 2534866, 2534818, 2534819</td></tr><tr><td align="left" class="style1">
        Vice-Chancellor</td><td align="left" class="style1">vc@cuop.edu.in</td>
        <td align="left" class="style1">
            2534299, 2534297, 2534293</td></tr><tr><td align="left" class="style1">Dean 
        University Instructions</td><td align="left" class="style1">dui@cuop.edu.in</td>
        <td align="left" class="style1">
            2534292, 2534291, 2534290</td></tr><tr><td align="left" class="style1">
        Registrar</td><td align="left" class="style1">
            regr@cuop.edu.in</td><td align="left" class="style1">2534867, 2534868</td></tr><tr><td align="left" class="tdfaculty">
    Controller of Examination</td><td align="left" class="tdfaculty">coe@cuop.edu.in</td><td align="left" class="tdfaculty">
    2534813, 2534814, 2534811</td></tr><tr><td align="left" class="tdfaculty">Dean 
        Student Welfare</td><td align="left" class="tdfaculty">
            dsw@cuop.edu.in</td><td align="left" class="tdfaculty">2534565, 2541596</td></tr><tr>
    <td align="left" class="style1">
        Dean Student Welfare (Women)</td><td align="left" class="style1"></td>
    <td align="left" class="style1">
        2541596, 2534565</td></tr><tr><td align="left" class="tdfaculty">Librarian</td><td align="left" class="tdfaculty">
        librarian@cuop.edu.in</td><td align="left" class="tdfaculty">2548159, 2534551</td></tr><tr><td align="left" class="tdfaculty">
    Chief Medical Officer</td><td align="left" class="tdfaculty"></td><td align="left" class="tdfaculty"></td></tr><tr><td align="left" class="tdfaculty">
    Public Relations (D.P.R.)</td><td align="left" class="tdfaculty">dpr@cuop.edu.in</td><td align="left" class="tdfaculty">
    2541054, 2534865</td></tr><tr><td align="left" class="tdfaculty">Dean College 
        Development Council</td><td align="left" class="tdfaculty">
            dcdc@cuop.edu.in</td><td align="left" class="tdfaculty">2541943, 2534887</td></tr><tr><td align="left" class="tdfaculty">
    Dean International Students</td><td align="left" class="tdfaculty">dis@cuop.edu.in</td><td align="left" class="tdfaculty">
    2541873, 2534574</td></tr><tr><td align="left" class="tdfaculty">Dean Alumni 
        Relations</td><td align="left" class="tdfaculty">
            darpu@cuop.edu.in</td><td align="left" class="tdfaculty">2541881, 2534575</td></tr><tr><td align="left" class="tdfaculty">
    Director, Computer Centre</td><td align="left" class="tdfaculty">
        directorcc@cuop.edu.in</td><td align="left" class="tdfaculty">
        2534064</td></tr><tr><td align="left" class="tdfaculty">Deputy Registrar 
        (General)</td><td align="left" class="tdfaculty"></td><td align="left" class="tdfaculty">
        2534857</td></tr><tr><td align="left" class="tdfaculty">Deputy Registrar 
        (Colleges)</td><td align="left" class="tdfaculty"></td><td align="left" class="tdfaculty">
        2534805</td></tr><tr><td align="left" class="tdfaculty">Deputy Registrar 
        (Secrecy)</td><td align="left" class="tdfaculty"></td><td align="left" class="tdfaculty">
        2534877</td></tr><tr><td align="left" class="tdfaculty">Assistant Registrar 
        (Conduct)</td><td align="left" class="tdfaculty"></td><td align="left" class="tdfaculty">
        2534809</td></tr><tr><td align="left" class="tdfaculty">Assistant Registrar 
        (Registration &amp; Stores)</td><td align="left" class="tdfaculty"></td><td align="left" class="tdfaculty">
        2534869</td></tr><tr><td align="left" class="tdfaculty">
        Website Management</td><td align="left" class="tdfaculty">webman@cuop.edu.in</td><td align="left" class="tdfaculty"></td></tr></table>



</font>

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

  </script>
<style type="text/css">
    .style1
    {
        height: 23px;
    }
</style>




</asp:Content>


