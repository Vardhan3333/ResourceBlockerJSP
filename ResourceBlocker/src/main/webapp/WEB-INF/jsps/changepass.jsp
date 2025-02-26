<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body>
<div class="mainContainer">
<form action="/change"  onSubmit="return click1()"  method="get" >
<div class="headingsContainer">
<%boolean b=(boolean)request.getAttribute("b"); %>
 <%if(b) { %>
 <p>Passwords Doesn't match or already used</p>
 <%} %>
<h1> Change Password</h1>
<form action="/updatepassword" method="post">
<label>Old Password</label>
<input type="text" name="password1" id= "password1" required><br>
<label>New Password</label>
<input type="text" name="password2" id= "password2" required><br>
<label>Confirm New Password</label>
<input type="text" name="password3" id= "password3" required><br>
<input type="submit" value="Change Password">
<script>
      function click1(){
      if(confirm("Update details??" )){
      return true;
      }
      else{
      return false;
      }
      }
      </script>
</form>
</div class="mainContainer"> 
</body>
</html>