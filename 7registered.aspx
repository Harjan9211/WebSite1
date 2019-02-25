<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="7registered.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><br />
    <br />
    <p align="center" class="MsoNormal" style="text-align:center">
        hello

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    
      , your account details is sent to administrator for approval</p>
                    Your user name is<font face="tahoma" color="green" size="2"></font>
    
   <b> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></b>
    <br />
    
                    <i><small>(Remember your username 
                    further reference)</small></i>,<br />
<br />
<a href="1home.aspx">click here for go to home page</a><br />
    <br />
    
    
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

 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
    </style>

</asp:Content>


