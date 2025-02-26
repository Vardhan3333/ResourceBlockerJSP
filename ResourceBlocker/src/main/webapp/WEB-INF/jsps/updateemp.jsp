<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<style>


</style>

</head>
<body>

<div class="mainContainer">
<form:form action="/saveprofile" method="post" modelAttribute="user" onSubmit="return click1()"  >
 <div class="headingsContainer">
<h2>Update Your Details</h2>
</div class="mainContainer">
            <label for="Email">Email</label>
            <form:input path="email"  placeholder="Enter New Email" id="email" name="email"/> 

           <br>
  
            <label for="Name">Name</label>
             
            <form:input  placeholder="Enter Name" path="ename" id="ename" name="ename" />

            <br>


            <label for="Location">Location</label>
            <form:input path="location" placeholder="Enter Location" id="location" name="location"/>

            <br>

      
            <label for="Designation">Designation</label>
            <form:input path="designation" placeholder="Enter Designation" id="designation" name="designation"/>

            <br>
            
             <button type="submit">Submit</button>
</div>
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

</form:form>




</div>
</div>
</body>
</html>