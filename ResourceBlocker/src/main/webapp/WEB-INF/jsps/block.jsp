<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Block </title>
<style>

</style>
</head>
<body>
<form action="/block" method="post" modelAttribute="user"  onSubmit ="return" click1()>
<div id="form-main">
<h2>Block Your Resource</h2>
  <div id="form-div">
    <form class="form" id="form1">
      
      <p class="in-text">
        <input name="ename" type="text" class="feedback-input" placeholder="Name" id="name" />
      </p>
     
      <p class="in-text">
        <input name="eid" type="text" class="feedback-input" id="id" placeholder="Emp Id" />
      </p>
      <p class="in-text">
        <input name="designation" type="text" class="feedback-input" id="designation" placeholder="Designation" />
      </p>
      <p class="in-text">
        <input name="location" type="text" class="feedback-input" id="location" placeholder="Location" />
      </p>
      <p class="in-text">
        <input name="start_date" type="date" class="feedback-input" id="start_date" min="" placeholder="Start Date" />
      </p>
      <script>
      var todayDate=new Date().toISOString().slice(0,10);
      document.getElementById("start_date").min=todayDate
      </script>
      <p class="in-text">
        <input name="end_date" type="date" class="feedback-input" id="enddate" placeholder="End Date" />
      </p>
   	<script>
      var todayDate=new Date().toISOString().slice(0,10);
      document.getElementById("enddate").min=todayDate
      </script>
      <div class="submit">
        <input type="submit" value="Submit" id="button-blue"/>
        <div class="ease"></div>
      </div>
      <script>
      function click1(){
    	        if(confirm("Confirm Submit" )){
    	        return true;
    	        }
    	        else{
    	        return false;
    	        }
    	        }
      </script>
    </form>
  </div>
  </div>
  </form>
</body>
</html>