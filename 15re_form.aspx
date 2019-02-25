<%@ Page Language="C#" AutoEventWireup="true" CodeFile="15re_form.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style2
        {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <center>
    
        <Font face="impact" color="red"><h1>Online Education Hub</h1>
        </Font><font face="tahoma" color="gray" size="5"><b>Registration Form</b></font><br />  
  <b>
        <br />
        Personal Detail</b>
  <hr width="780px" />
    
    
        <table border="2" width="60%">
    
             <tr><td align="left" width="30%">Courses</td><td align="left" width="70%">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>MCA</asp:ListItem>
                            <asp:ListItem>M. SC IT</asp:ListItem>
                            <asp:ListItem>PGDCA</asp:ListItem>
                            <asp:ListItem>BCA</asp:ListItem>
                            <asp:ListItem>B. SC IT</asp:ListItem>
                            <asp:ListItem>DCA</asp:ListItem>
                            <asp:ListItem>DSC</asp:ListItem>
                            <asp:ListItem>MBA</asp:ListItem>
                            <asp:ListItem>PGDBM</asp:ListItem>
                            <asp:ListItem>BBA</asp:ListItem>
                            <asp:ListItem>M.A.(ARTS)</asp:ListItem>
                            <asp:ListItem>B.A. (ARTS)</asp:ListItem>
                        </asp:DropDownList>
                    </td>
             </tr>
             
             <tr>
                <td width="200px" align="left">Enrollment No. ( if Enrolled )</td>
                <td width="200px" align="left">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
             </tr>
             
             <tr>
                    <td align="left">Name of the Candidate    <span style="COLOR: red">*</span></td>
                    <td align="left">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
                    </td>
             
             </tr>
             
             <tr>
                    <td align="left"><span id="fa">Father&#39;s Name <span style="COLOR: red">*</span></span></td>
                    <td align="left">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Please Enter Fathers Name"></asp:RequiredFieldValidator>
                    </td>
             </tr>
             
             <tr>
                    <td align="left"><span id="mo">Mother&#39;s Name <span style="COLOR: red">*</span></span></td>
                    <td align="left">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="Please enter Mothers name"></asp:RequiredFieldValidator>
                    </td>
             </tr>
             
             <tr>
                    <td align="left"><span id="dob">Date of Birth<span style="COLOR: red">*</span></span></td>
                    <td align="left">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="Enter Valid date" 
                            MaximumValue="9999/12/28" MinimumValue="1000/12/28" Type="Date"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="Enter Date"></asp:RequiredFieldValidator>
                    </td>
             </tr>
             
              <tr>
                    <td align="left">Sex</td>
                    <td align="left">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
             </tr>
              <tr>
                    <td align="left">Original Resident of</td>
                    <td align="left">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Punjab</asp:ListItem>
                            <asp:ListItem>Other State</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
             </tr>
              <tr>
                    <td align="left">Religion</td>
                    <td align="left">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>General</asp:ListItem>
                            <asp:ListItem>SC</asp:ListItem>
                            <asp:ListItem>ST</asp:ListItem>
                            <asp:ListItem>OBC</asp:ListItem>
                        </asp:DropDownList>
                    </td>
             </tr>
             
             <tr>
                    <td align="left"><span id="address">Correspondence Address<span style="COLOR: red">*</span></span></td>
                    <td align="left">
                        <asp:TextBox ID="TextBox6" runat="server" ontextchanged="TextBox6_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="Please Enter Address"></asp:RequiredFieldValidator>
                        <br />
                        </td>
             </tr>
             
             <tr>
                    <td align="left">City<span style="COLOR: red">*</span></td>
                    <td align="left">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="TextBox8" ErrorMessage="Please Enter City"></asp:RequiredFieldValidator>
                    </td>
             </tr>
             
             <tr>
                    <td align="left">District<span style="COLOR: red">*</span></td>
                    <td align="left">
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="TextBox9" ErrorMessage="Please Enter District"></asp:RequiredFieldValidator>
                    </td>
             </tr>
             
             <tr>
                    <td align="left">Pin Code<span style="COLOR: red">*</span> </td>
                    <td align="left">
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="TextBox10" ErrorMessage="Please Enter Pin Code"></asp:RequiredFieldValidator>
                    </td>
             </tr>
             
              <tr>
                    <td align="left">Phone / Mobile No.<span style="COLOR: red">*</span></td>
                    <td align="left">
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="TextBox11" ErrorMessage="Please Enter Phone Number"></asp:RequiredFieldValidator>
                    </td>
             </tr>
             
              <tr>
                    <td align="left">Email ID<span style="COLOR: red">*</span></td>
                    <td align="left">
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox12" ErrorMessage="Enter valid Email Address" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="TextBox12" ErrorMessage="Enter Email address"></asp:RequiredFieldValidator>
                    </td>
             </tr>
             
             
             
              <tr>
                    <td align="left">If appearing in any other examination give details </td>
                    <td align="left">
                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                    </td>
             </tr>
             
              <tr>
                    <td align="left">If applied for registration earlier give details</td>
                    <td align="left">
                        <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                    </td>
             </tr>
             
              <tr>
                    <td align="left"><span id="pass">Password </span><span style="COLOR: red">*</span></td>
                    <td align="left">
                        <asp:TextBox ID="TextBox22" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="TextBox22" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                    </td>
             </tr>
             
              <tr>
                    <td align="left"><span id="conpass1">Confirm Password <span style="COLOR: red">*</span></span></td>
                    <td align="left">
                        <asp:TextBox ID="TextBox23" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox22" ControlToValidate="TextBox23" 
                            ErrorMessage="Password Not Match"></asp:CompareValidator>
                    </td>
             </tr> 
    
             <tr>
                    <td align="left"><span id="Span1">Select Security  Qution :<span style="COLOR: red">*</span></span></td>
                    <td align="left">
                       
        <asp:DropDownList ID="DropDownList8" runat="server">
            <asp:ListItem Value="one">What is your first school name</asp:ListItem>
            <asp:ListItem Value="two">Your mother middel name</asp:ListItem>
            <asp:ListItem Value="three">Your pet name</asp:ListItem>
        </asp:DropDownList>
                       
                    </td>
             </tr> 
    
              <tr>
                    <td align="left"><span id="Span2">Security Answer<span style="COLOR: red">*</span></span></td>
                    <td align="left">
                        <asp:TextBox ID="TextBox13" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                            ControlToValidate="TextBox13" ErrorMessage="Enter Answer"></asp:RequiredFieldValidator>
                    </td>
             </tr> 
    
    </table>
  <br /><br />  
  <b>Bnak Details</b>
  <hr width="780px" />
  <table>
        <tr>
            <td align="left" width="200px">Bank Name
                <span id="conpass2"> <span style="COLOR: red">*</span></span></td>
            <td align="left" width="400px"><span id="conpass8"><span style="COLOR: red">
                <asp:TextBox ID="TextBox24" runat="server" 
                    ontextchanged="TextBox24_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ErrorMessage="Enter Bank Name" ControlToValidate="TextBox24"></asp:RequiredFieldValidator>
                </span></span></td>
        </tr>
        <tr>
            <td align="left">Branch/City<span id="conpass3"><span style="COLOR: red">*</span></span></td>
            <td align="left">
                <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" 
                    runat="server" ErrorMessage="Enter Branch name" 
                    ControlToValidate="TextBox25"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td align="left">Branch Code<span id="conpass4"><span style="COLOR: red">*</span></span></td>
            <td align="left"><font color="#990000">
                <span id="conpass9"> <span style="COLOR: red">
                <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ErrorMessage="Enter Branch code" ControlToValidate="TextBox26"></asp:RequiredFieldValidator>
                </span></span></font></td>
        </tr>
        <tr>
            <td align="left">DD No.<span id="conpass5"><span style="COLOR: red">*</span></span></td>
            <td align="left"><font color="#990000">
                <span id="conpass10"> <span style="COLOR: red">
                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ErrorMessage="Enter DD Number" ControlToValidate="TextBox27"></asp:RequiredFieldValidator>
                </span></span></font></td>
        </tr>
        <tr>
            <td align="left">Date on DD<span id="conpass6"><span style="COLOR: red">*</span></span></td>
            <td align="left">
                <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" 
                    runat="server" ErrorMessage="Enter Date" ControlToValidate="TextBox28"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="TextBox28" ErrorMessage="Enter Valid Date" 
                    MaximumValue="9999/12/28" MinimumValue="1000/12/28" Type="Date"></asp:RangeValidator>
                        </td>
        </tr>
        
        <tr>
            <td align="left">Amount <span id="conpass7"> <span style="COLOR: red">*</span></span></td>
            <td align="left">
                <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" 
                    runat="server" ErrorMessage="Enter Amount On DD" 
                    ControlToValidate="TextBox29"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" 
                    ErrorMessage="Enter Valid Amount" MaximumValue="100000" MinimumValue="1" 
                    Type="Double" ControlToValidate="TextBox29"></asp:RangeValidator>
                        </td>
        </tr>
        
  </table>
  
  <br /><br />  
  <b>Educational Details</b>
  <hr width="780px" />
   
<table>   
   <tr>
		  <td height="30" colspan="3" align="left"><table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" class="table">
            <tr >
              <td width="28%" height="30" align="left" >Name of Examination </td>
              <td width="8%" align="left" >Subject</td>
              <td width="8%" align="left" >Year(YYYY)</td>
              <td width="8%" align="left" >Division </td>
              <td width="8%" align="left" ><p>Marks&nbsp; % </p>                </td>
              <td width="31%" align="left" >Board/University </td>
              </tr>
            <tr >
              <td height="30" align="left" >High School <span style="color:red">* </span> </td>
              <td align="left" >
                  <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                                    </td>
              <td align="left" >
                  <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                                    </td>
              <td align="left" >
                  <asp:DropDownList ID="DropDownList4" runat="server">
                      <asp:ListItem>None</asp:ListItem>
                      <asp:ListItem>I st</asp:ListItem>
                      <asp:ListItem>II nd</asp:ListItem>
                      <asp:ListItem>III rd</asp:ListItem>
                  </asp:DropDownList>
                                    </td>
              <td align="left" >
                  <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                                    </td>
              <td align="left" >
                  <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" 
                      runat="server" ControlToValidate="TextBox31" ErrorMessage="Enter Year"></asp:RequiredFieldValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                      ControlToValidate="TextBox41" ErrorMessage=" Enter University"></asp:RequiredFieldValidator>
                                    </td>
              </tr>
            <tr >
              <td height="30" align="left" >Intermediate/ +2<span style="color:red"> * </span></td>
              <td align="left">
                  <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                                    </td>
              <td align="left">
                  <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                                    </td>
              <td align="left">
                  <asp:DropDownList ID="DropDownList5" runat="server">
                     <asp:ListItem>None</asp:ListItem>
                      <asp:ListItem>I st</asp:ListItem>
                      <asp:ListItem>II nd</asp:ListItem>
                      <asp:ListItem>III rd</asp:ListItem>
                  </asp:DropDownList>
                                    </td>
              <td align="left">
                  <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                                    </td>
              <td align="left" >
                  <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" 
                      runat="server" ControlToValidate="TextBox33" ErrorMessage="Enter Year"></asp:RequiredFieldValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                      ControlToValidate="TextBox42" ErrorMessage="Enter University"></asp:RequiredFieldValidator>
                                    </td>
              </tr>
            <tr >
              <td height="30" align="left" >B.A./B.Sc./B.Com/B.Sc(Ag) <span style="color:red">* </span></td>
              <td align="left" >
                  <asp:TextBox ID="TextBox34" runat="server" 
                      ontextchanged="TextBox34_TextChanged"></asp:TextBox>
                                    </td>
              <td align="left" >
                  <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                                    </td>
              <td align="left" >
                  <asp:DropDownList ID="DropDownList6" runat="server">
                     <asp:ListItem>None</asp:ListItem>
                      <asp:ListItem>I st</asp:ListItem>
                      <asp:ListItem>II nd</asp:ListItem>
                      <asp:ListItem>III rd</asp:ListItem>
                  </asp:DropDownList>
                                    </td>
              <td align="left" >
                  <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                                    </td>
              <td align="left" >
                  <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" 
                      runat="server" ControlToValidate="TextBox35" ErrorMessage="Enter Year"></asp:RequiredFieldValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                      ControlToValidate="TextBox43" ErrorMessage="Enter University"></asp:RequiredFieldValidator>
                                    </td>
              </tr>
            
            <tr >
              <td height="30" align="left" ><p>Other Examination&nbsp;                   <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
              </p></td>
              <td align="left" >&nbsp;</td>
              <td align="left" >&&nbsp;</td>
              <td align="left" >
                  <asp:DropDownList ID="DropDownList7" runat="server">
                     <asp:ListItem>None</asp:ListItem>
                      <asp:ListItem>I st</asp:ListItem>
                      <asp:ListItem>II nd</asp:ListItem>
                      <asp:ListItem>III rd</asp:ListItem>
                  </asp:DropDownList>
                                    </td>
              <td align="left" >
                  <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                                    </td>
              <td align="left" >
                  <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
                                    </td>
            </tr>
            
            
            
          </table></td>
	    </tr>
		
		<tr >
		  <td height="30" colspan="3" align="left"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td colspan="3" >&nbsp;</td>
            </tr>
            <tr>
              <td colspan="3" >&nbsp;</td>
            </tr>
            <tr>
              <td colspan="3" >&nbsp;</td>
            </tr>
            <tr>
              <td colspan="3" ><div align="center"><strong>Checklist (Attached Documents) </strong></div></td>
            </tr>
            <tr>
              <td colspan="3" >&nbsp; </td>
            </tr>
            <tr>
              <td colspan="3" ><div align="center"><em>Note : Attach Attested copies of certificates &amp; mark sheets of all examinations with this form. </em></div></td>
              </tr>
            <tr>
              <td colspan="3" >&nbsp;</td>
              </tr>
            <tr>
              <td width="34%" class="style2" >
                  <asp:CheckBox ID="CheckBox1" runat="server" 
                      oncheckedchanged="CheckBox1_CheckedChanged" Text="Marksheet of High School" />
                </td>
              <td width="33%" class="style2" >
                  <asp:CheckBox ID="CheckBox5" runat="server" Text=" Marksheet of Intermediate" />
                </td>
              <td class="style2" >&nbsp;<asp:CheckBox ID="CheckBox9" runat="server" 
                      Text="Marksheet of Graduation" />
                </td>
              </tr>
            <tr>
              <td >
                  <asp:CheckBox ID="CheckBox2" runat="server" 
                      Text=" Mark sheet of Other Examination " />
                </td>
              <td >
                  <asp:CheckBox ID="CheckBox6" runat="server" 
                      Text=" Marksheet of Post Graduation" />
                </td>
              <td >&nbsp;<asp:CheckBox ID="CheckBox10" runat="server" 
                      Text="Residence/Domicile Certificate" />
                                    </td>
              </tr>
            <tr>
              <td >
                  <label>
                  <asp:CheckBox ID="CheckBox3" runat="server" Text="Handicap Certificate" />
                  </label></td>
              <td >
                  <asp:CheckBox ID="CheckBox7" runat="server" Text=" Religion Certificate" />
                </td>
              <td width="33%" >&nbsp;<asp:CheckBox ID="CheckBox11" runat="server" 
                      Text="Bank Challan" />
                </td>
              </tr>
            <tr>
              <td >&nbsp;<asp:CheckBox ID="CheckBox4" runat="server" 
                      Text="No objection Certificate" />
                                    </td>
              <td colspan="2" >&nbsp;</td>
              </tr>
            <tr>
              <td >&nbsp;</td>
              <td >&nbsp;</td>
              <td >&nbsp;</td>
              </tr>
            <tr>
              <td ><label>&nbsp;</label></td>
              <td >
                  &nbsp;</td>
              <td >&nbsp;</td>
              </tr>
            
            
          </table></td>
		</tr>
		<tr>
		  <td align="left" >&nbsp;</td>
		  <td align="left" >&nbsp;</td>
		  <td align="left" >&nbsp;</td>
	    </tr>
		<tr>
		  <td align="left" >&nbsp;</td>
		  <td align="left" >&nbsp;</td>
		  <td align="left" >&nbsp;</td>
	    </tr>
		<tr>
		  <td align="left" >&nbsp;</td>
		  <td align="left" ><span id="check_bo"  style="display:block">&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
		  </span></td>
		  <td align="left" >&nbsp;</td>
	    </tr>
		<tr><td width="42%" align="left" class="style1" >&nbsp;&nbsp;&nbsp;&nbsp;</td>		
	
		 <td width="7%" align="left" class="style1" ></td>
		 <td width="51%" align="left" class="style1" ></td>
	    </tr>
	</table>

   
   
   
   
   
   
    </center>
    
    </div>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
