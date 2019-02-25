<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="1HOME.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>

    <table width="730px">
    <tr>
        <td align="left" width="70%" colspan="2">
            <table >
             <tr><td width="20%"><font face="tahoma" color="green"><big><b>Welcome</b></big></font></td>
            
        
             <td align="right" width="80%">
<font face="tahoma" color="gray"><small><small>             
<script language="JavaScript" type="text/javascript">
<!--

// This array holds the "friendly" day names
var day_names = new Array(7)
day_names[0] = "Sunday"
day_names[1] = "Monday"
day_names[2] = "Tuesday"
day_names[3] = "Wednesday"
day_names[4] = "Thursday"
day_names[5] = "Friday"
day_names[6] = "Saturday"

// This array holds the "friendly" month names
var month_names = new Array(12)
month_names[0] = "January"
month_names[1] = "February"
month_names[2] = "March"
month_names[3] = "April"
month_names[4] = "May"
month_names[5] = "June"
month_names[6] = "July"
month_names[7] = "August"
month_names[8] = "September"
month_names[9] = "October"
month_names[10] = "November"
month_names[11] = "December"

// Get the current date
date_now = new Date()

// Figure out the friendly day name
day_value = date_now.getDay()
date_text = day_names[day_value]

// Figure out the friendly month name
month_value = date_now.getMonth()
date_text += " " + month_names[month_value]

// Add the day of the month
date_text += " " + date_now.getDate()

// Add the year
date_text += ", " + date_now.getFullYear()

// Get the minutes in the hour
minute_value = date_now.getMinutes()
if (minute_value < 10) {
    minute_value = "0" + minute_value
}

// Get the hour value and use it to customize the greeting
hour_value = date_now.getHours()
if (hour_value == 0) {
   greeting = "Good morning, "
   time_text = (hour_value + 12) + ":" + minute_value + " AM "
}
else if (hour_value < 12) {
    greeting = "Good morning!"
    time_text =  hour_value + ":" + minute_value + " AM "
}
else if (hour_value == 12) {
    greeting = "Good afternoon!"
    time_text = hour_value + ":" + minute_value + " PM "
}
else if (hour_value < 17) {
    greeting = "Good afternoon!"
    time_text = (hour_value - 12) + ":" + minute_value + " PM "
}
else {
    greeting = "Good evening!"
    time_text = (hour_value - 12) + ":" + minute_value + " PM "
}

//document.write(greeting + " It's " + date_text + time_text)
document.write( time_text + date_text )


//-->
</script>

</small> </small>  </font>
             
             
             
             
             
             
             </td></tr>
             <tr><td colspan="2"><font face="tahoma" color="red"><big><b> Online Education Hub, 
                 Auckland</b></big></font></td></tr>
            
            </table>
        
        
        
        
        
        
        
        </td>
        
        <td rowspan="4" width="30%" valign="top">
        
        <table>
        <tr><td width="230px"><font face="tahoma" color="olive"><small><b>Latest News</b></small></font></td></tr>
        <tr>
        
        <td align="left">
           
           <marquee behavior="scroll" direction="up">
           <small>
           <ul>
           <li>Our university lanching new Programing plans for on line education<img src="images/new.gif" /><br /></li>
           
           </ul>
           </small></marquee>
           
            </td>
        
        </tr>
        </table>
        
        
        
        </td>
        
     </tr>    
        
        <tr><td colspan="2" align="left">
        
            <asp:ScriptManager ID="ScriptManager2" runat="server" />
            <asp:Timer ID="Timer1" Interval="2000" runat="server" />
 
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
                <ContentTemplate>
                     <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile.xml" Height="200px" Width="300px" />
                </ContentTemplate>
             </asp:UpdatePanel>    
            
        </td></tr>
        
        
        
        
        
        
        <tr><td colspan="2" align="left">
            <br />
           <font face="tahoma"><b>About us </b>&nbsp;<br />
            Online Education Hub was established in 1956 as a unitary residential 
            University. Located in the holy city of Auckland.<br />
            Starting with only the Department of Sanskrit, it has grown into a multi-faculty 
            University as one of the premier centres for advanced study and research in the 
            region. Auckland is often considered to be an educational hub of this region. 
            Many students from the neighboring towns who intend to pursue medical or 
            engineering come here to prepare for their entrance exams. There is one 
            government funded and nearly ten private colleges in the city.ity.</font>
            <br />
                                
                                <br />
            </td></tr>
        
        <tr><td align="left" valign="top">
        <font face="tahoma"><b>Our Vision<br />
            </b>widely acknowledged as a distinguished seat of higher learning, ever striving 
            to become a leading centre of academic excellence by expanding the frontiers of 
            knowledge in global encompassment, with due emphasis on societal concerns and 
            our rich cultural heritage</font></td>
               
               
               <td align="left" valign="top">
        <font face="tahoma"><b>Our Mission<br />
                   </b>Preparing a class of scholars and professionals with 
                   ingrained human values, adequately equipped with enviable competencies and 
                   dedicated to the advancement of society through preservation, creation and 
                   application of knowledge in the emerging global.</font>
              
            </td></tr>
        
    </table>
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
    
</asp:Content>
