<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
body
{
background-image:url(https://www.clipartsgram.com/image/1587127106-light-colour-background-images-hd-abstract-colors-and-light-wallpapers-1680x1050-no43-desktop-awesome.jpg
);
background-size:150%;
background-repeat: no-repeat;

}
</style>
<script>
function check()
{
	var email=new String(document.myform.email.value);
	var password=new String(document.myform.password.value);
	var pass1=new String(document.myform.pass1.value);
	var fname=new String(document.myform.fname.value);
	var lname=new String(document.myform.lname.value);
	var dob=new String(document.myform.dob.value);
	var mobileno=new String(document.myform.mobileno.value);
if (fname == null || fname == "") {
        alert("First Name must be entered");
        
}
if (lname == null || lname == "") {
        alert("Last Name must be entered");
        
}
if(email.length<6)
{
	alert("Enter valid E Mail Id");
	document.myform.email.value="";email="";
}

if((password.length<8) || (pass1.length<8) ||!(password.match(pass1)))
{
	alert("Password should have minimum of 8 characters ");
	alert("Re-enter the correct password ");
        document.myform.password.value="";password="";
	document.myform.pass1.value="";pass1="";
}

}

</script>
</head>
<body>

<form name="myform"  method="post"  onsubmit="check()" action="Success">

<table cellpadding="2" align="center"
cellspacing="2">

<tr>
<td colspan=2>
<center><font size=6><b>Registration Form</b></font></center>
</td>
</tr>

<tr>
<td>UserName*</td>
<td><input type="text" name="UserName" id="username" required="true" ></td>
</tr>

<tr>
<td>First Name*</td>
<td><input type="text" name="fname" id="fname" required="true" ></td>
</tr>

<tr>
<td>Last Name*</td>
<td><input type="text" name="lname" id="lname" required="true"></td>
</tr>

<tr>
<td>Date Of Birth*</td>
<td><input type="text" name="dob" id="dob"></td>
</tr>

<tr>
<td>E Mail*</td>
<td><input type="text" name="email" id="email"></td>
</tr>

<tr>
<td>Password</td>
<td><input type="password" name="password" id="password"  ></td>
</tr>

<tr>
<td>Re-enter Password</td>
<td><input type="password" name="pass1"  id="pass1" ></td>
</tr>

<tr>
<td>Sex</td>
<td><input type="radio" name="sex" value="male" size="10">Male
<input type="radio" name="sex" value="female" size="10">Female</td>
</tr>

<tr>
<td>MobileNo*</td>
<td><input type="text" name="mobileno" id="mobileno" pattern="[9|7|8][0-9]{9}" required="true"></td>
</tr>

<tr>
<td>Address</td>
<td><input type="text" name="address"></td>
</tr>

<tr>
<td>City</td>
<td><select name="City">
<option value="-1" selected>select..</option>
<option value="Chennai">Chennai</option>
<option value="Mumbai">Mumbai</option>
<option value="Madurai">Madurai</option>
<option value="Delhi">Delhi</option>
<option value="Bengaluru">Bengaluru</option>
<option value="Hyderabad">Hyderabad</option>
<option value="Ahmedabad">Ahmedabad</option>
<option value="Kolkata">Kolkata</option>
<option value="Surat">Surat</option>
<option value="Jaipur">Jaipur</option>
<option value="Lucknow">Lucknow</option>
<option value="Kanpur">Kanpur</option>
<option value="Nagpur">Nagpur</option>
<option value="Visakhapatnam">Visakhapatnam</option>
<option value="Indore">Indore</option>
<option value="Thane">Thane</option>
<option value="Bhopal">Bhopal</option>
<option value="Patna">Patna</option>
<option value="Vadodara">Vadodara</option>
<option value="Ghaziabad">Ghaziabad</option>
<option value="Ludhiana">Ludhiana</option>
<option value="Coimbatore">Coimbatore</option>
</select></td>
</tr>

<tr>
<td>District</td>
<td><select name="District">
<option value="-1" selected>select..</option>
<option value="Srikakulam">Chennai</option>
<option value="Thane">Thane</option>
<option value="Visakhapatnam">Visakhapatnam</option>
<option value="Bhopal">Bhopal</option>
<option value="Changlang">Changlang</option>
<option value="Dibang Valley">Dibang Valley</option>
<option value="Bishwanath">Bishwanath</option>
<option value="Cachar">Cachar</option>
<option value="Dhubri">Dhubri</option>
<option value="Aurangabad">Aurangabad</option>
<option value="Bhojpur">Bhojpur</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Bijapur">Bijapur</option>
<option value="Dhamtari">Dhamtari</option>
<option value="Daman">Daman</option>
<option value="Diu">Diu</option>
<option value="Shahdara">Shahdara</option>
<option value="	Ahmedabad">	Ahmedabad</option>
<option value="Bharuch">Bharuch</option>
<option value="Jamnagar">Jamnagar</option>
<option value="Gurgaon">Gurgaon</option>
<option value="	Jind">Jind</option>
</select></td>

</tr>

<tr>
<td>State</td>
<td><select name="State">
<option value="-1" selected>select..</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Mumbai">Mumbai</option>
<option value="Goa">Goa</option>
<option value="Bihar">Bihar</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="	Arunachal Pradesh">	Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="	Himachal Pradesh">	Himachal Pradesh</option>
<option value="	Jammu and Kashmir">	Jammu and Kashmir</option>
<option value="	Jharkhand">	Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="	Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="	Madhya Pradesh">Madhya Pradesh</option>
<option value="	Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Nagaland">Nagaland</option>
</select></td>
</tr>

<tr>
<td>PinCode</td>
<td><input type="text" name="pincode" id="pincode"></td>
</tr>

<tr>
<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="Submit Form" /></td>
</tr>
</table>
<br>
<br>
<br>
<div align="center">OR<br>
<a href=Loginpage>Login</a>
</div>
<br>
<br>
<br>
<p>Note: Please make sure your details are correct before submitting form and that all fields marked with * are completed!.</p>
</form>

</body>
</html>
